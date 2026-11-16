# Настройки именно под ThinkPad T430i (Intel HD Graphics 4000, Ivy Bridge).
{ pkgs, ... }:
{
  hardware.enableRedistributableFirmware = true;

  hardware.graphics.enable = true;
  # Аппаратное декодирование видео для старых Intel (до Broadwell).
  hardware.graphics.extraPackages = [ pkgs.intel-vaapi-driver ];
}
