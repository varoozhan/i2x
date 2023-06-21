function wind = test_damwind
  [PQ, PV, REF, NONE, BUS_I, BUS_TYPE, PD, QD, GS, BS, BUS_AREA, VM, ...
   VA, BASE_KV, ZONE, VMAX, VMIN, LAM_P, LAM_Q, MU_VMAX, MU_VMIN] = idx_bus;
  [CT_LABEL, CT_PROB, CT_TABLE, CT_TBUS, CT_TGEN, CT_TBRCH, CT_TAREABUS, ...
  CT_TAREAGEN, CT_TAREABRCH, CT_ROW, CT_COL, CT_CHGTYPE, CT_REP, ...
  CT_REL, CT_ADD, CT_NEWVAL, CT_TLOAD, CT_TAREALOAD, CT_LOAD_ALL_PQ, ...
  CT_LOAD_FIX_PQ, CT_LOAD_DIS_PQ, CT_LOAD_ALL_P, CT_LOAD_FIX_P, ...
  CT_LOAD_DIS_P, CT_TGENCOST, CT_TAREAGENCOST, CT_MODCOST_F, ...
  CT_MODCOST_X] = idx_ct;
  [GEN_BUS, PG, QG, QMAX, QMIN, VG, MBASE, GEN_STATUS, PMAX, PMIN, ...
  MU_PMAX, MU_PMIN, MU_QMAX, MU_QMIN, PC1, PC2, QC1MIN, QC1MAX, ...
  QC2MIN, QC2MAX, RAMP_AGC, RAMP_10, RAMP_30, RAMP_Q, APF] = idx_gen;
  [PW_LINEAR, POLYNOMIAL, MODEL, STARTUP, SHUTDOWN, NCOST, COST] = idx_cost;
  wind = struct( ...
  'type', 'mpcData', ...
  'table', CT_TGEN, ...
  'rows', [14, 15, 16, 17, 18], ...
  'col', PMAX, ...
  'chgtype', CT_REP, ...
  'values', [] );
  wind.values(:, 1, 1) = [99.8; 96.24; 99.8; 78.04; 55.98; 63.04; 40.62; 51.22; 38.56; 47.81; 43.49; 49.0; 49.9; 53.91; 59.72; 73.99; 72.27; 70.84; 68.39; 74.31; 56.02; 47.56; 54.47; 40.46];
  wind.values(:, 1, 2) = [1657.0; 1657.0; 1657.0; 1624.67; 1657.0; 1657.0; 1657.0; 1657.0; 1657.0; 1657.0; 1649.16; 1343.44; 1469.85; 1657.0; 1657.0; 1252.69; 875.21; 901.04; 1019.53; 877.93; 751.37; 656.38; 526.74; 638.4];
  wind.values(:, 1, 3) = [2242.2; 2242.2; 2191.92; 1926.54; 1598.71; 1288.27; 1286.58; 1272.35; 1238.49; 1193.36; 1120.9; 1008.38; 878.89; 793.6; 779.7; 801.77; 920.64; 1122.54; 718.47; 543.34; 552.5; 495.17; 701.28; 714.3];
  wind.values(:, 1, 4) = [3562.2; 3562.2; 3562.2; 3562.2; 3562.2; 2942.82; 1406.82; 577.58; 709.55; 1218.0; 1441.76; 1331.22; 1166.5; 715.58; 147.04; 0.42; 0.0; 7.73; 0.0; 0.0; 0.0; 26.56; 16.24; 85.86];
  wind.values(:, 1, 5) = [8730.3; 8730.3; 8730.3; 8730.3; 8730.3; 3803.89; 2817.48; 4206.94; 4155.58; 6743.04; 5912.39; 5713.69; 8702.69; 6638.16; 3917.73; 2744.11; 2578.28; 635.26; 0.0; 0.0; 175.46; 605.29; 907.06; 464.93];
end
