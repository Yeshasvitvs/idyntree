function v = SENSOR_FT_PARAM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = iDynTreeMEX(0, 34);
  end
  v = vInitialized;
end
