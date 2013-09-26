import re
from colormath.color_objects import RGBColor, LCHabColor

custom_filters = {}

def lch_to_hex(lch_color):
    return lch_color.convert_to('rgb').get_rgb_hex().upper()

def hex_to_lch(hex_color):
    rgb_color = RGBColor()
    rgb_color.set_from_rgb_hex(hex_color)
    return rgb_color.convert_to('lchab')

def raw_hex(hex_color):
    return hex_color[1:]

def slashed_hex(hex_color):
    grps = re.match('#(..)(..)(..)', hex_color).groups()
    return 'rgb:{}/{}/{}'.format(*grps)

def raw_rgb(hex_color):
    rgb_color = RGBColor()
    rgb_color.set_from_rgb_hex(hex_color)
    return '{} {} {}'.format(*rgb_color.get_value_tuple())

def scaled_rgb(hex_color, component=None, factor=1.0):
    rgb_color = RGBColor()
    rgb_color.set_from_rgb_hex(hex_color)
    values = list(map(lambda x: factor * (x / 255), rgb_color.get_value_tuple()))
    if component is None:
        return '{} {} {}'.format(*rgb_color.get_value_tuple())
    else:
        comp_idx = ('R', 'G', 'B').index(component)
        return '{}'.format(values[comp_idx])

def alter_lch(hex_color, value, component='L', relative=True):
    rgb_color = RGBColor()
    rgb_color.set_from_rgb_hex(hex_color)
    lch_color = rgb_color.convert_to('lchab')
    lch_lst = list(lch_color.get_value_tuple())
    comp_idx = ('L', 'C', 'H').index(component)
    lch_lst[comp_idx] = lch_lst[comp_idx] + value if relative else value
    L, C, H = lch_lst
    lch_res = LCHabColor(L, C, H)
    return lch_to_hex(lch_res)

def tune_lightness(hex_color, value):
    return alter_lch(hex_color, value)

def set_lightness(hex_color, value):
    if isinstance(value, str):
        value = hex_to_lch(value).get_value_tuple()[0]
    return alter_lch(hex_color, value, relative=False)

def tune_chroma(hex_color, value):
    return alter_lch(hex_color, value, component='C')

def set_chroma(hex_color, value):
    if isinstance(value, str):
        value = hex_to_lch(value).get_value_tuple()[1]
    return alter_lch(hex_color, value, component='C', relative=False)

def tune_hue(hex_color, value):
    return alter_lch(hex_color, value, component='H')

def set_hue(hex_color, value):
    if isinstance(value, str):
        value = hex_to_lch(value).get_value_tuple()[2]
    return alter_lch(hex_color, value, component='H', relative=False)

custom_filters['slashedhex'] = slashed_hex
custom_filters['rawhex'] = raw_hex
custom_filters['rawrgb'] = raw_rgb
custom_filters['scaledrgb'] = scaled_rgb
custom_filters['L'] = tune_lightness
custom_filters['_L'] = set_lightness
custom_filters['C'] = tune_chroma
custom_filters['_C'] = set_chroma
custom_filters['H'] = tune_hue
custom_filters['_H'] = set_hue
