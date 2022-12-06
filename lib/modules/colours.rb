module Colours
  def black(text);          "\e[30m#{text}\e[0m" end
  def red(text);            "\e[31m#{text}\e[0m" end
  def green(text);          "\e[32m#{text}\e[0m" end
  def brown(text);          "\e[33m#{text}\e[0m" end
  def blue(text);           "\e[34m#{text}\e[0m" end
  def magenta(text);        "\e[35m#{text}\e[0m" end
  def cyan(text);           "\e[36m#{text}\e[0m" end
  def gray(text);           "\e[37m#{text}\e[0m" end

  def bg_black(text);       "\e[40m#{text}\e[0m" end
  def bg_red(text);         "\e[41m#{text}\e[0m" end
  def bg_green(text);       "\e[42m#{text}\e[0m" end
  def bg_brown(text);       "\e[43m#{text}\e[0m" end
  def bg_blue(text);        "\e[44m#{text}\e[0m" end
  def bg_magenta(text);     "\e[45m#{text}\e[0m" end
  def bg_cyan(text);        "\e[46m#{text}\e[0m" end
  def bg_gray(text);        "\e[47m#{text}\e[0m" end
  def bg_light_yellow(text);"\e[103m#{text}\e[0m" end
  def bg_light_green(text); "\e[102m#{text}\e[0m" end
end