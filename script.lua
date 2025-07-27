local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- Lista das keys válidas (adicione as suas aqui)
local keysValidas = {
    ["tagsfree123"] = true,
    ["outrakey456"] = true,
    ["F4a6w5Le"] = true,
    ["azk93EFFQGSFrjdG"] = true,
   ["null"] = true,
   ["TAGSOMELHOR"] = true,
  ["keu-8233"] = true,
  ["BAUJGFAS"] = true,
  ["KEY553412"] = true,
  ["MELHORKEYDOMUNDORECEBA"] = true,
  ["antoniokey123"] = true,                                                                                                                                                                                       ["victorkey123"] = true,                                                                                                                                                                                           ["VEEK1GVNVX"] = true,
    ["JVIH78TRZB"] = true,
    ["R54YF9C7H0"] = true,
    ["5UQXXIGLPI"] = true,
    ["45VMX39EIG"] = true,
    ["2ZP9KTZNMS"] = true,
    ["ZVHP0OMITC"] = true,
    ["3SH5B17HJ1"] = true,
    ["QHHSQYJURX"] = true,
    ["UN1277ZSKH"] = true,
    ["TAMHF9RQJN"] = true,
    ["86QODMO4YL"] = true,
    ["QBU8BBOZQE"] = true,
    ["KUWTAP2KUJ"] = true,
    ["LF6ZG0BPNS"] = true,
    ["PLOOV1CNV4"] = true,
    ["LBPE964AP6"] = true,
    ["09T3RVENPM"] = true,
    ["FTGGL8BMPO"] = true,
    ["PSMF3CE9WM"] = true,
    ["EQ1AN51I67"] = true,
    ["IIFMQ4ZXRE"] = true,
    ["G2R725KPXR"] = true,
    ["810J7QUTB3"] = true,
    ["43NFYVY5M7"] = true,
    ["2MNA3GHI4R"] = true,
    ["ZLT041KGUO"] = true,
    ["E6NJ984OI0"] = true,
    ["S6CVJZCH9I"] = true,
    ["XQ0YXC7MH0"] = true,
    ["1F9KUOMJUF"] = true,
    ["V1KDYPMV73"] = true,
    ["GDSF5VUV9V"] = true,
    ["RTFHGM0RD3"] = true,
    ["BK84AFLQBL"] = true,
    ["PH31BKSISP"] = true,
    ["MYIFVKJOQ5"] = true,
    ["WFTF4T4Q22"] = true,
    ["XQ8HD0DS8Q"] = true,
    ["2MJVPW6I5B"] = true,
    ["TNQSLVM72D"] = true,
    ["KDRG1GTTC0"] = true,
    ["B3XBHZWSRJ"] = true,
    ["W4ZQDI7NXG"] = true,
    ["PJS3YNXZXR"] = true,
    ["D80AHF60X0"] = true,
    ["NPGLCLJ9H6"] = true,
    ["DCZV3MZQOZ"] = true,
    ["05ME1Q236K"] = true,
    ["OA48JGBJ69"] = true,
    ["WWY2W9V2GV"] = true,
    ["PV6QZ8L55I"] = true,
    ["LE08PT0CYB"] = true,
    ["M9URL4INVP"] = true,
    ["YC2FUM27FF"] = true,
    ["XYEFA8564Z"] = true,
    ["2RDLOWW3A8"] = true,
    ["97SGK84VUA"] = true,
    ["ZU3X41FVIZ"] = true,
    ["0W54ZRVADB"] = true,
    ["FAR66VVK0Y"] = true,
    ["8M8B1Z1A66"] = true,
    ["8AJBBHJSRF"] = true,
    ["02V64GBING"] = true,
    ["JLQ9DWVLRF"] = true,
    ["AHJ7T983R3"] = true,
    ["S8MESK3SQ4"] = true,
    ["1G38WP5IRZ"] = true,
    ["95FWJUSYJU"] = true,
    ["E3XDMSXN78"] = true,
    ["9XZLPEAV1H"] = true,
    ["9KAK9C4W1E"] = true,
    ["1BXS51DSE2"] = true,
    ["6LP0D26CXE"] = true,
    ["CB69CL75R0"] = true,
    ["DF73PPAL9P"] = true,
    ["8O3G853IP8"] = true,
    ["HAZJ0RP5SO"] = true,
    ["EUORY06B1N"] = true,
    ["0L34QW1YZM"] = true,
    ["LTCI2K26BG"] = true,
    ["K9V3FLOBC9"] = true,
    ["87KQNFRPQX"] = true,
    ["5AWXIN53RO"] = true,
    ["X789H21U9L"] = true,
    ["U1X4GVB9X2"] = true,
    ["IICKX75X0H"] = true,
    ["VHRY4UHUON"] = true,
    ["RN5EWGLXJG"] = true,
    ["VQVSNV5YVB"] = true,
    ["MLTA3XIWMA"] = true,
    ["DJJS909NOH"] = true,
    ["GDVYDXC3I5"] = true,
    ["6CNBVK3BZC"] = true,
    ["CKZEBEOGWZ"] = true,
    ["CUCC1P3NK9"] = true,
    ["TDH0Y2BYII"] = true,
    ["RR6JP3UI1D"] = true,
    ["71LRRG81GV"] = true,
    ["BSXV4CCNA8"] = true,
    ["292GK3KVLP"] = true,
    ["DW88OE567R"] = true,
    ["GXE5DLR6ZU"] = true,
    ["12Z6G9HM73"] = true,
    ["Q0M78ILYE7"] = true,
    ["8BG1QT4AEM"] = true,
    ["2BB6QBYGIU"] = true,
    ["3MFMBVNL0L"] = true,
    ["W0CVSGRZ73"] = true,
    ["4KWP1TUQN5"] = true,
    ["HDKXEK3D0O"] = true,
    ["IL499BGQEO"] = true,
    ["HF750NTN6H"] = true,
    ["XHE9HC3E3C"] = true,
    ["ZY7ROAV45Z"] = true,
    ["32P54DB93V"] = true,
    ["UVTWMCEGLH"] = true,
    ["5IJ4I9QTEG"] = true,
    ["P83SMILL59"] = true,
    ["GIILIYDLPY"] = true,
    ["01DD6CHYTW"] = true,
    ["TSQWBZSVF1"] = true,
    ["IA1XMV0V0L"] = true,
    ["QNO8A1708Z"] = true,
    ["70PIIK8ZFT"] = true,
    ["43U4UVJLHA"] = true,
    ["46PC09NJD2"] = true,
    ["JSU0GDY535"] = true,
    ["8HGFA41VFJ"] = true,
    ["970KCYWBQ6"] = true,
    ["DMNTGPO80P"] = true,
    ["J6VTJ7O637"] = true,
    ["IKLXD5UEC9"] = true,
    ["CTTK8C60BN"] = true,
    ["AC762YAMJC"] = true,
    ["ZIXRDXNQCN"] = true,
    ["543R0M3GLL"] = true,
    ["VS4OD2OVZQ"] = true,
    ["BN8E9Z71CR"] = true,
    ["ZRAC4ORPEA"] = true,
    ["M241CAW82Z"] = true,
    ["1Z2EHN1P0B"] = true,
    ["BNQG9CFTW2"] = true,
    ["M7T0B8GL7X"] = true,
    ["6EK18USTRQ"] = true,
    ["RP9N77F1I5"] = true,
    ["71KB5TU41G"] = true,
    ["YW94YK0HNN"] = true,
    ["H2H2V7OF0D"] = true,
    ["V3WJ1JBDOR"] = true,
    ["ACJIK0B4Q1"] = true,
    ["C1961SLPPH"] = true,
    ["QGN52Y7OJZ"] = true,
    ["252YSFGTH2"] = true,
    ["56X6P0KX3T"] = true,
    ["7NRTTQ4JM8"] = true,
    ["5AV3NLCVZR"] = true,
    ["WB0J25DH1W"] = true,
    ["B28NG470R7"] = true,
    ["6RHHMV1EHE"] = true,
    ["HSEAOJ4YDC"] = true,
    ["AMQFXT40G3"] = true,
    ["7NPOFR29K0"] = true,
    ["SY3ROVTCK8"] = true,
    ["5A2AE0FOCH"] = true,
    ["YOYW8DZVVY"] = true,
    ["4BSXSI0UEC"] = true,
    ["6JM3XSD113"] = true,
    ["GNRCGO3GQC"] = true,
    ["VAM7J33AX1"] = true,
    ["EHEXBRS0IA"] = true,
    ["TNNS17E4ID"] = true,
    ["JY8HQ3E81L"] = true,
    ["A2G1K8IWN4"] = true,
    ["UJTS7Z8KZA"] = true,
    ["0JLHLFJCGB"] = true,
    ["ZSG4YAD28O"] = true,
    ["I0A1OJCHG8"] = true,
    ["ZL6UDJO0EQ"] = true,
    ["3U6X0WT2XQ"] = true,
    ["91SMJCKUJ5"] = true,
    ["T551LF79AE"] = true,
    ["VBYF9BWIQA"] = true,
    ["VETDGLMFZF"] = true,
    ["1JVB9M5DUZ"] = true,
    ["P88Q1QTEO1"] = true,
    ["LR43LATRCE"] = true,
    ["ZRXGJI1F59"] = true,
    ["OGRE5U9NO7"] = true,
    ["VKI19VG25B"] = true,
    ["SJHRUXQIVW"] = true,
    ["MHI4UZHMIB"] = true,
    ["SQ7OZB82ZG"] = true,
    ["O8V3YIDF58"] = true,
    ["SKIEV4B63W"] = true,
    ["DBXZKZIUQY"] = true,
    ["D7EIY48R9U"] = true,
    ["VZBEP827H4"] = true,
    ["GAT8H5E03D"] = true,
    ["VOXECVNSXQ"] = true,
    ["MICWGT26ND"] = true,
    ["WM5ZV8GGO6"] = true,
    ["8UWHL3RSG0"] = true,
    ["V65GOM9SPZ"] = true,
    ["7KB3IPJUKX"] = true,
    ["N81M9ALZMF"] = true,
    ["FQKR1B1JY9"] = true,
    ["VFS0C8U8N1"] = true,
    ["D1KZCTH0FA"] = true,
    ["NFH1GXX117"] = true,
    ["6QY4O8VREZ"] = true,
    ["D2MPN9YE7U"] = true,
    ["W8HV28VIHB"] = true,
    ["LZ92BOBI55"] = true,
    ["P913PTU0VM"] = true,
    ["RAW56P35F0"] = true,
    ["MFNCUCEBNY"] = true,
    ["T6RF2QNEOV"] = true,
    ["DD4HWIZOQA"] = true,
    ["8GH5VL3XPP"] = true,
    ["2G7E1DRDM9"] = true,
    ["FHU8ID6TSP"] = true,
    ["P8AG79V7LV"] = true,
    ["HZTQXALLO9"] = true,
    ["KTCWS3NHQR"] = true,
    ["VYCBJXTVC5"] = true,
    ["S917G7MN8B"] = true,
    ["BBLLRE74VN"] = true,
    ["JYEE1GEJ2F"] = true,
    ["TNO6S65WTP"] = true,
    ["02UXO55PLS"] = true,
    ["KNMIOVCT68"] = true,
    ["96YR6E3SC8"] = true,
    ["629TM28VG4"] = true,
    ["C68OYKWCF8"] = true,
    ["87GZ7W6WOK"] = true,
    ["H7OOWEECBM"] = true,
    ["N4W3COJXAD"] = true,
    ["BV2QZJO0QP"] = true,
    ["9NCR68Y4N8"] = true,
    ["XQMRRLTO2E"] = true,
    ["BHFD113IGR"] = true,
    ["VKIDXSXILQ"] = true,
    ["ZUBPQBXUVJ"] = true,
    ["VWB4X8QTSP"] = true,
    ["G3HAR9DL09"] = true,
    ["JOE80YYCFS"] = true,
    ["JWEEQQW8GZ"] = true,
    ["8TLYK30KJU"] = true,
    ["VOUDL7XF2O"] = true,
    ["CYE7YV3XZN"] = true,
    ["MFZ7HZ4P29"] = true,
    ["HOJYXJCQ20"] = true,
    ["NXUV2EP18R"] = true,
    ["EK2RX3BUME"] = true,
    ["SA46I4GVD6"] = true,
    ["839DYV9DIX"] = true,
    ["9AUMXOSP0H"] = true,
    ["CZURCOUS1L"] = true,
    ["Q06R2TL5YC"] = true,
    ["9O6G5JNZUM"] = true,
    ["M96D753IQZ"] = true,
    ["GDDPJKX6OM"] = true,
    ["414MVHW2OH"] = true,
    ["KF02D459W2"] = true,
    ["L0XDR693XQ"] = true,
    ["M5A24ON90E"] = true,
    ["XFV0WDG4LH"] = true,
    ["KP8ZPZZ2Q2"] = true,
    ["TFRV8LCB8F"] = true,
    ["XTZSQ0U57B"] = true,
    ["ZEE6BFKYQ5"] = true,
    ["75LN0OKGEB"] = true,
    ["VGTPLHT8DQ"] = true,
    ["49GFTZPEB1"] = true,
    ["0F6A47WJ1K"] = true,
    ["28XWMB7HZB"] = true,
    ["EAKF9JWES4"] = true,
    ["282BW45IHL"] = true,
    ["H4SJU7C2NW"] = true,
    ["EXQCR1ET3E"] = true,
    ["0FE407IELB"] = true,
    ["F9K17CQZW5"] = true,
    ["70K06CSM43"] = true,
    ["X9QSY1F8D9"] = true,
    ["G3KJJ7P6YI"] = true,
    ["H00P31FX5T"] = true,
    ["UYUZY4OEUA"] = true,
    ["RTJ13ASV73"] = true,
    ["NU22FJT371"] = true,
    ["GFPN8H9UKV"] = true,
    ["YNF992CKNO"] = true,
    ["D6UEEXK6PB"] = true,
    ["FZ6TIWZP1E"] = true,
    ["0Z9OK3ZVZF"] = true,
    ["FYPIDXOPXI"] = true,
    ["XTSYCWRLX6"] = true,
    ["L5RMAT66CE"] = true,
    ["1M79G10RAH"] = true,
    ["MJIZ5ZWA1A"] = true,
    ["688EQRNPFM"] = true,
    ["WP2SKJ2QEV"] = true,
    ["J8U8T0MHFJ"] = true,
    ["9RDCQW2CLW"] = true,
    ["ST0T28PEVQ"] = true,
    ["MHEAUKCMOB"] = true,
    ["TICGM33XTY"] = true,
    ["DGICQB7AYS"] = true,
    ["EQ0HHQFIUS"] = true,
    ["NB6WX8MY6F"] = true,
    ["4XD4YYHIOK"] = true,
    ["BGU1MG9HJV"] = true,
    ["RNLSYO6L99"] = true,
    ["43NJ7900FZ"] = true,
    ["ZMNBRUTYSZ"] = true,
    ["5TJ0XK8IZK"] = true,
    ["5BGBYHC7NZ"] = true,
    ["48P2U7IUUF"] = true,
    ["ML6M4SN06Q"] = true,
    ["LP3NHSO5NP"] = true,
    ["CV7P6DS69T"] = true,
    ["C6R4E4FNCL"] = true,
    ["KLHJO79BFB"] = true,
    ["L8SQ37KZVC"] = true,
    ["WGTWHFOLR9"] = true,
    ["HP08VK1VYV"] = true,
    ["74GP6VT3HI"] = true,
    ["R6FHPJF6KR"] = true,
    ["J3LO86LMM6"] = true,
    ["9TH7ZW5RQA"] = true,
    ["F9XPO59IAC"] = true,
    ["CRJJ815QIM"] = true,
    ["JQ78LC303A"] = true,
    ["CJHJSK0BW9"] = true,
    ["NENYKAEZ1A"] = true,
    ["077JEB19KL"] = true,
    ["WUHWXHE6PC"] = true,
    ["J7W3WVHVGG"] = true,
    ["8HZFKGQMR9"] = true,
    ["F9FQ43IGTV"] = true,
    ["4GGR7QA8X0"] = true,
    ["NYBTTZDUTI"] = true,
    ["0DZ8VL9S86"] = true,
    ["XTS8UZ845K"] = true,
    ["6CBVY4LK9Y"] = true,
    ["1CV24PLJ12"] = true,
    ["DWP39VL89U"] = true,
    ["U1D70WUZUE"] = true,
    ["IYTSNQ7FBG"] = true,
    ["LES0492WE0"] = true,
    ["REHAX5FZRU"] = true,
    ["OBUJJ1I6V2"] = true,
    ["ZIYK84OJ7H"] = true,
    ["R3HHR5OWL4"] = true,
    ["0XF9HD31VF"] = true,
    ["N94251YJAU"] = true,
    ["BNL1HEIBNI"] = true,
    ["9AHQZL836M"] = true,
    ["MGZ8HFMTPO"] = true,
    ["F0AVS8O2YZ"] = true,
    ["0AR69RUDS6"] = true,
    ["G5IDMKRN5B"] = true,
    ["4EKFUI93GK"] = true,
    ["4OJ0L9OLJC"] = true,
    ["RWB5187F6J"] = true,
    ["JM1WLFL9CB"] = true,
    ["VVS7YU9QBF"] = true,
    ["68CC05SS77"] = true,
    ["1O6LBGPHI2"] = true,
    ["UKC52LB0DN"] = true,
    ["SJQHS4JRCT"] = true,
    ["I56JW3YFWS"] = true,
    ["OEQ8PEUZZ3"] = true,
    ["4CA1SV08MQ"] = true,
    ["0W3Y70QGDY"] = true,
    ["JLW0NJDDQ9"] = true,
    ["CL3VPZVN5S"] = true,
    ["XKPXF7G719"] = true,
    ["H6SWSRR0L8"] = true,
    ["X7HJUMT3CA"] = true,
    ["I1UV46Z694"] = true,
    ["ES0UND8DXX"] = true,
    ["O2ON13OKOQ"] = true,
    ["9VQ1JCHMWD"] = true,
    ["AGBWE6UNO7"] = true,
    ["IZ23AMPTY9"] = true,
    ["GOO5VCGT1C"] = true,
    ["C7B3PXCQ91"] = true,
    ["OACE8ZANBC"] = true,
    ["UTYXQF9GAT"] = true,
    ["6F8BMXC8OO"] = true,
    ["QA40BOUE3V"] = true,
    ["S8U50RL4EK"] = true,
    ["DH4E46783L"] = true,
    ["6PLBR5ES1P"] = true,
    ["GMUPDV6FI3"] = true,
    ["06LLM0GYWK"] = true,
    ["L4JBVQATRB"] = true,
    ["MMV610Q0O9"] = true,
    ["9KSTDX19WB"] = true,
    ["J1EPUOXAJL"] = true,
    ["4L5M6DJNYG"] = true,
    ["JIVWLKUWOZ"] = true,
    ["ZWQJ9GAQCS"] = true,
    ["WF063H0F9Z"] = true,
    ["ERDO69NMA9"] = true,
    ["XE8KNI1HSF"] = true,
    ["27UW4F78TI"] = true,
    ["8H55I75JV7"] = true,
    ["Z08RYN8FM2"] = true,
    ["2YU4I2LPTL"] = true,
    ["9679AN2YRV"] = true,
    ["UH8XJB7K6M"] = true,
    ["ALR0C6I5SB"] = true,
    ["DBZ9XPL5K2"] = true,
    ["ITUGQAKOFA"] = true,
    ["6VXOCLE6S6"] = true,
    ["6FNPKMRKKQ"] = true,
    ["H3Q4VPTWFK"] = true,
    ["K2G4ZQY1QJ"] = true,
    ["UVORD6OT48"] = true,
    ["FN56ZQUZOZ"] = true,
    ["4QG48CJPKI"] = true,
    ["19FIXPBLVN"] = true,
    ["5N62B5V3I2"] = true,
    ["R252SPXB9X"] = true,
    ["09NYYQCD5V"] = true,
    ["01R1JY23YW"] = true,
    ["LBUXNCLGOB"] = true,
    ["RGSTV7W8M3"] = true,
    ["J1KO2O5P89"] = true,
    ["UZQHGSFP2D"] = true,
    ["U9HSH7HVK4"] = true,
    ["I62765Y2EC"] = true,
    ["L85ADLVQBC"] = true,
    ["5OOGOC4AB1"] = true,
    ["LQ5FQ0JIJK"] = true,
    ["9YPHEQVG6O"] = true,
    ["O23YGD090F"] = true,
    ["ZAX66FMZPZ"] = true,
    ["YUJIIVFO4U"] = true,
    ["H4KJLQTYVW"] = true,
    ["L2SPKJ48DS"] = true,
    ["G7478SCPSZ"] = true,
    ["XHVY183BCZ"] = true,
    ["21OL3OERW6"] = true,
    ["BHV0B9VRWR"] = true,
    ["FDHHHBVQ6I"] = true,
    ["S21J7RIS6Q"] = true,
    ["L82EN6ASUY"] = true,
    ["YBRNXRL5YQ"] = true,
    ["YYMVSY35ZA"] = true,
    ["UD0V72CVUY"] = true,
    ["14ETTY05XY"] = true,
    ["K6E3S5XF59"] = true,
    ["SUYQ05PEFN"] = true,
    ["HCZ1YQNQA3"] = true,
    ["WM1N6G4DUS"] = true,
    ["EXV470GFME"] = true,
    ["520JJZIFDV"] = true,
    ["LONIGBTER7"] = true,
    ["IKXJ973FWB"] = true,
    ["SOKXEFQ410"] = true,
    ["GZG63ZRV3L"] = true,
    ["RT7PD7GWGT"] = true,
    ["348L5GNN0N"] = true,
    ["YV2EMEG1XX"] = true,
    ["ZU5YSIODNB"] = true,
    ["0IVHP4KI5D"] = true,
    ["YR8VLCUWBJ"] = true,
    ["SKKRUNII88"] = true,
    ["T5ZM9Z5M9D"] = true,
    ["2CSW3P637H"] = true,
    ["UA48BV6ISH"] = true,
    ["AGJK71CH34"] = true,
    ["ESDAN9T2NN"] = true,
    ["H3966FT6WG"] = true,
    ["A4YW88PXW9"] = true,
    ["QJJNT1KJWY"] = true,
    ["R8W5T3WD1E"] = true,
    ["U6OD0PVG1J"] = true,
    ["FS8Y1K6LMX"] = true,
    ["VFH2TVNVC1"] = true,
    ["CKYUO1LF5O"] = true,
    ["HDKK1T8R0E"] = true,
    ["HHUO5PBE3R"] = true,
    ["BWIIZYAOMV"] = true,
    ["2RI66UEWZ6"] = true,
    ["GJJE42XJF4"] = true,
    ["8PXO539I6O"] = true,
    ["UK5IDWYGBT"] = true,
    ["DFMY3VQ7IA"] = true,
    ["J6FZ6QIG30"] = true,
    ["K9HZBA3374"] = true,
    ["MFXQPPEZF3"] = true,
    ["JA6JD22O2S"] = true,
    ["UT74QBKX7O"] = true,
    ["98M7GU28JG"] = true,
    ["0PASZYWT64"] = true,
    ["Y2GOFXR2RN"] = true,
    ["VLX7XQ94CX"] = true,
    ["H7VI14EBD2"] = true,
    ["KKGDEEU0Q6"] = true,
    ["OBGMH2LEHH"] = true,
    ["Y7DBV99DNH"] = true,
    ["0XEXSESZH2"] = true,
    ["2GCLVLBAXX"] = true,
    ["7VFJLW8RMR"] = true,
    ["1CZFWLKL9V"] = true,
    ["Q47L6OCVDL"] = true,
    ["OERM1R0POF"] = true,
    ["IQ8XTELV0I"] = true,
    ["L21J86B4V8"] = true,
    ["ZOR6T652CY"] = true,
    ["0T2CA0W9JQ"] = true,
    ["85D3XJ6EDM"] = true,
    ["AB0F9H9XCZ"] = true,
    ["42M13AIFGG"] = true,
    ["LTYWTQ3I4D"] = true,
    ["YI5SLYC14C"] = true,
    ["F9M5VE4RHE"] = true,
    ["WG6THGN926"] = true,
    ["7QVG49VEW4"] = true,
    ["Q84N6Z5E4V"] = true,
    ["6EVX9X8WN5"] = true,
    ["HRSDIZ6IQT"] = true,
    ["8L8U33BC07"] = true,
    ["7G8P4PZZGR"] = true,
    ["X998A30ODC"] = true,
    ["HOVNRK3LP8"] = true,
    ["62Y6A39SNY"] = true,
    ["O11NVRWXXP"] = true,
    ["BS3W16KIOM"] = true,
    ["K975WG786J"] = true,
    ["0UD0VYOFAO"] = true,
    ["YQTARHHVBV"] = true,
    ["1ARV0HYQ1U"] = true,
    ["N7X7QB9MJ3"] = true,
    ["NWM59REKWX"] = true,
    ["UZ6MUZQ1S5"] = true,
    ["NRVTPI8G5N"] = true,
    ["KE7LKRE8KX"] = true,
    ["PLY4WR01AM"] = true,
    ["G3VFNJ6V4O"] = true,
    ["HG2LSZA4PA"] = true,
    ["S2APUUHHWT"] = true,
    ["JASMJK62YB"] = true,
    ["H9T53Y7DT5"] = true,
    ["2VQ1ADQ2HD"] = true,
    ["2S23BPOGJU"] = true,
    ["M74VOBFUMZ"] = true,
    ["6HGJHR8CVG"] = true,
    ["GS360CYG61"] = true,
    ["0N9JBS6UXS"] = true,
    ["VWSYQJH2A0"] = true,
    ["FETM4SHA6N"] = true,
    ["GZL245S8ER"] = true,
    ["YA17MCDYHM"] = true,
    ["12BFCSKF31"] = true,
    ["5XMHNPAR7E"] = true,
    ["819CZT1GTI"] = true,
    ["VS91GLN7UW"] = true,
    ["49VRU4TQ77"] = true,
    ["MQJZA060OR"] = true,
    ["O21NG9JOE1"] = true,
    ["YT301X58Q3"] = true,
    ["E3V7JLVBIM"] = true,
    ["DACCKYV1VA"] = true,
    ["M5Q9J4KOQ0"] = true,
    ["GE858Q0SAN"] = true,
    ["SL8MEJAEDE"] = true,
    ["PQFGX6PEV7"] = true,
    ["PN3M2E9PZK"] = true,
    ["KSGASPB6BL"] = true,
    ["VSJHQ3WTAO"] = true,
    ["24NWT18CNA"] = true,
    ["W2NQ8ANXKH"] = true,
    ["1NLZQOJ394"] = true,
    ["DQY35K8317"] = true,
    ["8R2XQX1QZQ"] = true,
    ["LCDH8ESQWQ"] = true,
    ["363MAS5FOT"] = true,
    ["GVZ6AKB562"] = true,
    ["9KLW4LJMUW"] = true,
    ["D809K7166L"] = true,
    ["6F9PK9IHVR"] = true,
    ["MXE7F19S57"] = true,
    ["YAKBL06QS8"] = true,
    ["I5B1PD4FQM"] = true,
    ["79CC3IFWE7"] = true,
    ["WMIMZIN8VM"] = true,
    ["EE9ME3QLDP"] = true,
    ["PN64ELMLT0"] = true,
    ["TAWW1KPFYB"] = true,
    ["EPQKWS1BFT"] = true,
    ["VKWFL6UMGM"] = true,
    ["R3JTO01T1I"] = true,
    ["5RSZ30PQW9"] = true,
    ["WOT1CI05L3"] = true,
    ["8CRK0STFSH"] = true,
    ["LNB1V513EE"] = true,
    ["03VLEJ91WN"] = true,
    ["7QP5AQSJY3"] = true,
    ["9O3BQUBNDK"] = true,
    ["SSL1QFK3W2"] = true,
    ["AK0D663F9F"] = true,
    ["Q2UXYOJ6YW"] = true,
    ["R3F6BQP8II"] = true,
    ["UY4VB938YO"] = true,
    ["7P3GJ2BKFD"] = true,
    ["RONKIKISQB"] = true,
    ["76PD8RH3EP"] = true,
    ["JEV4YTS8ZY"] = true,
    ["O7TKVJL7GL"] = true,
    ["EKAHI590H5"] = true,
    ["UNBHWPU1IL"] = true,
    ["XBZ8OPQIZU"] = true,
    ["0UV8R6AHOZ"] = true,
    ["P72NM7EKN2"] = true,
    ["PFSCC2EPC2"] = true,
    ["OAZRRLSVG9"] = true,
    ["2VR6F6Y0F2"] = true,
    ["T1N3OKQHVL"] = true,
    ["SS2K6T0XEY"] = true,
    ["N9U94KSP8I"] = true,
    ["N6U0RQLLT4"] = true,
    ["468YDE34WW"] = true,
    ["WC22BILO8X"] = true,
    ["MVM6PHUIM3"] = true,
    ["RF15PI3CEN"] = true,
    ["07UPM7RT7A"] = true,
    ["IJ4FGUSR0W"] = true,
    ["IKB30G31AC"] = true,
    ["1873KMO616"] = true,
    ["JS7R2EURLJ"] = true,
    ["YO7UAIH1S7"] = true,
    ["JWZGAQCTIC"] = true,
    ["238FSLH9QR"] = true,
    ["G798DM88Z2"] = true,
    ["T35020ISD9"] = true,
    ["5Q55BTG46D"] = true,
    ["NY3W6K38CD"] = true,
    ["9JX0TBNZHC"] = true,
    ["C3WFNK9LSL"] = true,
    ["LTE0YGMN74"] = true,
    ["BAQ74SW6BY"] = true,
    ["2U2I57IUEE"] = true,
    ["G0DLXQOFMO"] = true,
    ["YO5AHTYNYQ"] = true,
    ["D2Y7M81GR0"] = true,
    ["JV4W4PHU3V"] = true,
    ["KAEW5RYIEI"] = true,
    ["470RIT5IY4"] = true,
    ["J048CGG7V2"] = true,
    ["C9WRFOAU03"] = true,
    ["DFZJKDHV11"] = true,
    ["6X96XI3FL4"] = true,
    ["4XWAD25JRI"] = true,
    ["2W7414PI3K"] = true,
    ["RA4V0O02MD"] = true,
    ["Z1TRGO1HFI"] = true,
    ["78ISRWNNF5"] = true,
    ["4A3GAJSKPD"] = true,
    ["CGFKW0EF22"] = true,
    ["S183FGU3O4"] = true,
    ["14KU4XRNAH"] = true,
    ["682S015AHH"] = true,
    ["SN3TAHJLPY"] = true,
    ["3DJOC2W93E"] = true,
    ["ILJ5H2Q9WG"] = true,
    ["LLP0R27MWK"] = true,
    ["ATCT7DQBIO"] = true,
    ["R8MC7UF2BV"] = true,
    ["NF06G4U5PA"] = true,
    ["41H2ZV1RZV"] = true,
    ["QQ98G3CSRX"] = true,
    ["S3ZHBMLAU8"] = true,
    ["I4U3BG3Z0W"] = true,
    ["7YX7AU3M6R"] = true,
    ["JPKOY8BHTY"] = true,
    ["0C57MBZ3SH"] = true,
    ["4ZIM46RS2X"] = true,
    ["5FDQDCXE29"] = true,
    ["RB8JOKICZ7"] = true,
    ["40929G6ZUG"] = true,
    ["IAU20YG4FT"] = true,
    ["RHN82PIU0J"] = true,
    ["LKM9HDFWMR"] = true,
    ["Y25LZBOAT1"] = true,
    ["C1ARBZJN1E"] = true,
    ["ZY3UXBNG8Z"] = true,
    ["QS9KVK9M33"] = true,
    ["8XIBZL21SP"] = true,
    ["GGAFH0R3RI"] = true,
    ["6D5DC2QM1V"] = true,
    ["ET6848HP4Y"] = true,
    ["4CMNOW2NJ5"] = true,
    ["4J9S4URZV1"] = true,
    ["PV2U77BBS0"] = true,
    ["R377Q2NA8V"] = true,
    ["PY1KFPIAAP"] = true,
    ["79WX3NGLHD"] = true,
    ["OYUCINIY7W"] = true,
    ["JCK9CYJUTM"] = true,
    ["4KQ5ST9T3H"] = true,
    ["LJO3Y1KISJ"] = true,
    ["NUCRH208CA"] = true,
    ["YZMEZHPP4L"] = true,
    ["GUFZALWJHV"] = true,
    ["8G4WC06IL1"] = true,
    ["ACMT7723R0"] = true,
    ["H0X7F8EINF"] = true,
    ["BQEHZL56MW"] = true,
    ["T9Q1Z7GDXJ"] = true,
    ["NKTD9D4T7E"] = true,
    ["A3U9PHUIGF"] = true,
    ["7T4A1LDQLC"] = true,
    ["ZGKB65LGJ4"] = true,
    ["8V0GD0L85H"] = true,
    ["PM6AJ9U8GJ"] = true,
    ["ZKN6ECN4PU"] = true,
    ["GMFUDGFWUV"] = true,
    ["4ZRLNC515K"] = true,
    ["FACE32309H"] = true,
    ["497W73PD23"] = true,
    ["S8QMXY66MR"] = true,
    ["2UGBP9Z7ZX"] = true,
    ["5BWXBMEHC2"] = true,
    ["ED095M9TBX"] = true,
    ["ZWOFTLVLF7"] = true,
    ["ZBZMN6QTMJ"] = true,
    ["MFX6SANG62"] = true,
    ["EFVNX8NVWF"] = true,
    ["J1UT49O80R"] = true,
    ["C9WMODTN0F"] = true,
    ["KA2AMGEVKC"] = true,
    ["L1NO6KQJM4"] = true,
    ["3UBSFOUPOZ"] = true,
    ["D5RMDGZBLD"] = true,
    ["V1J4EMKIFU"] = true,
    ["C7P0HNVZPW"] = true,
    ["R76BNLGUJM"] = true,
    ["WGOM9H0T31"] = true,
    ["E72V623868"] = true,
    ["AJCMGPLAVI"] = true,
    ["F9N92P3TMI"] = true,
    ["Y0K0YGY4SY"] = true,
    ["KO6P9D5LY3"] = true,
    ["NZC72AU6EP"] = true,
    ["3VTO5I6H99"] = true,
    ["ZUV0GAXIYK"] = true,
    ["C3Y92FUH1D"] = true,
    ["QNSSK1A5WL"] = true,
    ["OW2JFIAQ0S"] = true,
    ["JF89SJYW4J"] = true,
    ["OCP54VOSMZ"] = true,
    ["7JNJYZIDXP"] = true,
    ["3YQHNQFENV"] = true,
    ["Z47YFQX873"] = true,
    ["H35469F72E"] = true,
    ["5VXKVWXDTW"] = true,
    ["BGJQ7CXQCF"] = true,
    ["S5RKK7OU98"] = true,
    ["HKNKQYNP81"] = true,
    ["VMJBEWBJ02"] = true,
    ["8NJ4S4BQ0L"] = true,
    ["XRNW42YPCJ"] = true,
    ["YL6O6HHNST"] = true,
    ["FEQIBZZZZM"] = true,
    ["7DU1M3RDVU"] = true,
    ["LB57GZGPUF"] = true,
    ["OA9I33OPWJ"] = true,
    ["3RW8Z38RFD"] = true,
    ["B0TFCT36H3"] = true,
    ["KQX70UIVNR"] = true,
    ["6IN2GPOINP"] = true,
    ["BWNPSSVJMX"] = true,
    ["ZMMRYHOCGU"] = true,
    ["1ARLL1FXUW"] = true,
    ["628QHSEFL2"] = true,
    ["E1EIS5DLJ6"] = true,
    ["RNVJ25WKXW"] = true,
    ["3HD48YJHNT"] = true,
    ["DC5D2LDV3R"] = true,
    ["GDICIHT2FP"] = true,
    ["E2CH98OREH"] = true,
    ["88CR0XPTCK"] = true,
    ["H5OMKG00V9"] = true,
    ["WZF4JH413U"] = true,
    ["9CB4S325LG"] = true,
    ["U2V8KEBRYY"] = true,
    ["84WSSFNDJ2"] = true,
    ["408JG5FTFJ"] = true,
    ["VARTLE36H2"] = true,
    ["1J6DLV66RZ"] = true,
    ["3IW0BN1Y1L"] = true,
    ["8J3LAMLGH9"] = true,
    ["XEYEU1MOO5"] = true,
    ["2RC8UDRKFD"] = true,
    ["AMQ3CWWSST"] = true,
    ["VP23B3I0E2"] = true,
    ["3IM3WVKRAB"] = true,
    ["KLTVQH5AI1"] = true,
    ["VK84VU1GUY"] = true,
    ["BY67RX01MT"] = true,
    ["I5J46P1H16"] = true,
    ["EN57ZYJFF5"] = true,
    ["E7UYW6EL8F"] = true,
    ["B6EELOSPW8"] = true,
    ["SRVULO9TR3"] = true,
    ["E0H5W4HSN0"] = true,
    ["9Z2LKXMHMN"] = true,
    ["ODM06GS1TH"] = true,
    ["56KI6CRD84"] = true,
    ["7PY2D70LLM"] = true,
    ["P1A8NSYL9J"] = true,
    ["G1XWKUBAB6"] = true,
    ["G3QR9YXGY1"] = true,
    ["H8QYX7SU1B"] = true,
    ["CSBJ6T6FSW"] = true,
    ["LDOUYAVUGR"] = true,
    ["MQ61SQCVHH"] = true,
    ["8O25K0ZDMP"] = true,
    ["5JPKF03C9F"] = true,
    ["RI0MQHMPEC"] = true,
    ["Z7UPFOK4MA"] = true,
    ["Q1UJMOAM94"] = true,
    ["49605LIGHG"] = true,
    ["ZBJBTUNCBS"] = true,
    ["HHGKSQEKS2"] = true,
    ["H4S9RKJZZJ"] = true,
    ["H6FCKM2XOJ"] = true,
    ["ZZNRJR9BYE"] = true,
    ["YA5XBDT6EK"] = true,
    ["UAGSHNN33C"] = true,
    ["GXT9FREFBU"] = true,
    ["LDXPD2BIWQ"] = true,
    ["SSPK8VIWR8"] = true,
    ["IJKFCW2S8T"] = true,
    ["OS9NQ1QXOK"] = true,
    ["HU3EUEWV9P"] = true,
    ["TAU2Y8NTXE"] = true,
    ["YJ9GLPCO4B"] = true,
    ["IXNP8W1U64"] = true,
    ["Y53SKSRKKS"] = true,
    ["SVQVF3N597"] = true,
    ["IO28JO2DI2"] = true,
    ["FIZLOHHIWM"] = true,
    ["YHOPSJ63WF"] = true,
    ["8E21HQFA18"] = true,
    ["P5JQA7R7Z3"] = true,
    ["X96Q3G6TMN"] = true,
    ["LWUW2JDFMS"] = true,
    ["7BWNOMTX9Y"] = true,
    ["ZQEWG9UV63"] = true,
    ["VEUGGIAS40"] = true,
    ["GFJJPH99WB"] = true,
    ["2GUHLSGD11"] = true,
    ["B1GJOWG7I3"] = true,
    ["FZQ20418LC"] = true,
    ["BE4X2ABA6F"] = true,
    ["OCGSA8R1AD"] = true,
    ["HIYG3QK8PI"] = true,
    ["VVK312YRQF"] = true,
    ["L6EW2A5LJ8"] = true,
    ["K4SKEVASPJ"] = true,
    ["3X1FGBELUV"] = true,
    ["TEL2AXYR0R"] = true,
    ["XVPHPP589M"] = true,
    ["SXH8SJUVIJ"] = true,
    ["BXQ6OGIZ31"] = true,
    ["ZUA3GGBHH0"] = true,
    ["NZAC1AOAV1"] = true,
    ["DAVCQNBIVN"] = true,
    ["WM9JGSMQ4X"] = true,
    ["RRR5A283XM"] = true,
    ["R31XD1ENYV"] = true,
    ["5ZFF7E5QNC"] = true,
    ["EDEDBVFLO1"] = true,
    ["3V8Z304MV7"] = true,
    ["8MI8SC59M0"] = true,
    ["N5KYJJNX1I"] = true,
    ["8VGPJVS9FF"] = true,
    ["PS12YKN08O"] = true,
    ["Q3WHXCFY6I"] = true,
    ["ZP4XQO8BRY"] = true,
    ["IC47I9EM29"] = true,
    ["3PJ6HKISBL"] = true,
    ["M52M83XMNG"] = true,
    ["NVZ18TYQFY"] = true,
    ["UO2UDOWS47"] = true,
    ["11P163YRND"] = true,
    ["3B437L95MQ"] = true,
    ["9UWCWQ28U2"] = true,
    ["X31X9LW26P"] = true,
    ["MTXXOI0GVD"] = true,
    ["LJPWPPRDN8"] = true,
    ["W2OYMVTZO5"] = true,
    ["AGUO3MJNEX"] = true,
    ["TXHBHCJ3VG"] = true,
    ["MYG4ATTAJO"] = true,
    ["UKY0LJCX1K"] = true,
    ["MRK5ZAQDQ1"] = true,
    ["B149WV48K3"] = true,
    ["FC028RGE3X"] = true,
    ["K57HHMGBOO"] = true,
    ["S08QLSXI23"] = true,
    ["VJ7BGBQ7NO"] = true,
    ["AU3JHONWGV"] = true,
    ["WP7WDN8KE5"] = true,
    ["MML0SOT45O"] = true,
    ["C4F5QVBXX8"] = true,
    ["ZJ0BD0WIEG"] = true,
    ["QRJB2G2RHK"] = true,
    ["HQOCTQBTNN"] = true,
    ["H9M7J9Z1OF"] = true,
    ["CLFU6L2Y74"] = true,
    ["DWY4YPF4I9"] = true,
    ["ZLW5SGXYYF"] = true,
    ["Q8CYYKLJTQ"] = true,
    ["0R78X0LBHP"] = true,
    ["H5OX1O7I4T"] = true,
    ["KIA81BPADG"] = true,
    ["TJWRHM5W82"] = true,
    ["OEUG6GZNEJ"] = true,
    ["VNG6M14J7S"] = true,
    ["VDNEZ4BD1X"] = true,
    ["JPMSS8CX7I"] = true,
    ["87DNBBELFT"] = true,
    ["M2PX1XKR89"] = true,
    ["H6CQR2GRIU"] = true,
    ["N85RV0RTP2"] = true,
    ["Y24OGGKE7O"] = true,
    ["2T74APNIP6"] = true,
    ["CW30JUU18X"] = true,
    ["O9NG694S8O"] = true,
    ["TNFLFKR8TU"] = true,
    ["M0E42E42SM"] = true,
    ["36F5U3WB0Z"] = true,
    ["45ONROGN11"] = true,
    ["AJPLF8CSQ1"] = true,
    ["QE8RBQ7EWY"] = true,
    ["0M354KTZ1S"] = true,
    ["N5YEIR4WA0"] = true,
    ["UMRPK0YSZC"] = true,
    ["PBLFDOV1FP"] = true,
    ["WX4LKULW0K"] = true,
    ["3XDHP11NT8"] = true,
    ["UAKUBRQ8G2"] = true,
    ["X2979K02R5"] = true,
    ["8UKHQKICME"] = true,
    ["JLLUX003K3"] = true,
    ["IM7NVWVDW7"] = true,
    ["2G7G3OOUND"] = true,
    ["FJLX6D66LO"] = true,
    ["20HERZ6JXX"] = true,
    ["WK2O88WJ16"] = true,
    ["W69P23LAB6"] = true,
    ["E3HHU4Z4AB"] = true,
    ["5QMMDZ17WD"] = true,
    ["7UF6LBML8R"] = true,
    ["P8U36MEU4G"] = true,
    ["T5GRJX2VKL"] = true,
    ["JGT4T5GBTL"] = true,
    ["AVSFR58NWK"] = true,
    ["7MIINGNYDH"] = true,
    ["90KXUEFSPP"] = true,
    ["9GW5HWLPB3"] = true,
    ["JF9639M0W9"] = true,
    ["AWU6CFJR13"] = true,
    ["FJEKZDUX41"] = true,
    ["K4FVQ9W6U5"] = true,
    ["FMLM28HBUN"] = true,
    ["M2RG5HZTXH"] = true,
    ["TV1OA7QB65"] = true,
    ["6ZN2KPUEWQ"] = true,
    ["267UH6TX48"] = true,
    ["WQIH5UE0X3"] = true,
    ["G4YODBQQ8V"] = true,
    ["PGTYCXP65F"] = true,
    ["16ITFZRQCH"] = true,
    ["JCXF9FCHXH"] = true,
    ["X37N7APFYL"] = true,
    ["3PW2QM5D38"] = true,
    ["DJYTLS9GPA"] = true,
    ["14MGGM2RR5"] = true,
    ["WSF64GP4N1"] = true,
    ["BA2US1VFH2"] = true,
    ["KKELOWZEZA"] = true,
    ["SQCI67K4SE"] = true,
    ["J47HWPGZM2"] = true,
    ["SICSR3KQ10"] = true,
    ["RAILCKUNVV"] = true,
    ["5I5YTKWE1Y"] = true,
    ["J6BFIG5IWJ"] = true,
    ["3OOKDF32DM"] = true,
    ["X3O02SKUE3"] = true,
    ["4VF4ZB69U4"] = true,
    ["C8SBRJFE24"] = true,
    ["OU1MNXWF0T"] = true,
 }

-- UI de inserção da key
local CoreGui = game:GetService("CoreGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KeyInputUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 350, 0, 180)
frame.Position = UDim2.new(0.5, -175, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = screenGui
local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 8)
uicorner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 10)
title.BackgroundTransparency = 1
title.Text = "Digite a Key para ativar o TagsHub"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0, 40)
textBox.Position = UDim2.new(0.1, 0, 0, 70)
textBox.PlaceholderText = "Digite sua key aqui"
textBox.ClearTextOnFocus = false
textBox.Font = Enum.Font.Gotham
textBox.TextSize = 18
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
textBox.Parent = frame
local uicorner2 = Instance.new("UICorner")
uicorner2.CornerRadius = UDim.new(0, 6)
uicorner2.Parent = textBox

local button = Instance.new("TextButton")
button.Size = UDim2.new(0.6, 0, 0, 40)
button.Position = UDim2.new(0.2, 0, 0, 120)
button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
button.TextColor3 = Color3.new(1, 1, 1)
button.Text = "VALIDAR KEY"
button.Font = Enum.Font.GothamBold
button.TextSize = 18
button.Parent = frame
local uicorner3 = Instance.new("UICorner")
uicorner3.CornerRadius = UDim.new(0, 6)
uicorner3.Parent = button

local mensagemErro = Instance.new("TextLabel")
mensagemErro.Size = UDim2.new(1, 0, 0, 30)
mensagemErro.Position = UDim2.new(0, 0, 0, 160)
mensagemErro.BackgroundTransparency = 1
mensagemErro.TextColor3 = Color3.fromRGB(255, 50, 50)
mensagemErro.Text = ""
mensagemErro.Font = Enum.Font.GothamBold
mensagemErro.TextSize = 16
mensagemErro.Parent = frame

local function ativarScript()
    screenGui:Destroy()
    -- AQUI COMEÇA SEU SCRIPT ORIGINAL

    -- ======= VARIÁVEIS =======
    local noclip = false
    local aimbotPC = false
    local aimbotMobile = false
    local esp = false
    local puxarItensToggle = false
    local revistarToggle = false
    local teleportAutoAtivo = false -- controle teleporte automático

    local itens = {
        "AK47","Uzi","PARAFAL","Glock 17","Faca","IA2","G3","Dinamite",
        "Hi Power","Natalina","HK416","Lockpick","Escudo","Skate",
        "Saco de lixo","Peça de Arma","Tratamento","AR-15","PS5","C4","USP","Xbox"
    }

    -- Limpar notificações chatas
    local function limparNotificacoes()
        for _, gui in pairs(LocalPlayer.PlayerGui:GetChildren()) do
            if gui.Name == "NotifyGui" and gui:IsA("ScreenGui") then
                gui:Destroy()
            end
        end
    end

    -- ======= NOCOLIP =======
    RunService.Stepped:Connect(function()
        if noclip then
            local char = LocalPlayer.Character
            if char then
                for _, part in pairs(char:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end
    end)

    -- ======= BYPASS DE QUEDA =======
    RunService.Heartbeat:Connect(function()
        local char = LocalPlayer.Character
        if char then
            local dano = char:FindFirstChild("DanoQueda")
            if dano then
                dano:Destroy()
            end
        end
    end)

    -- ======= AIMBOT PC =======
    local mouseDown = false

    UserInputService.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            mouseDown = true
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            mouseDown = false
        end
    end)

    RunService.RenderStepped:Connect(function()
        if aimbotPC and mouseDown then
            local target = nil
            local shortest = math.huge
            local mousePos = UserInputService:GetMouseLocation()
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
                    local pos, vis = Camera:WorldToViewportPoint(p.Character.Head.Position)
                    if vis then
                        local dist = (Vector2.new(pos.X,pos.Y) - mousePos).Magnitude
                        if dist < shortest then
                            shortest = dist
                            target = p
                        end
                    end
                end
            end
            if target and target.Character and target.Character:FindFirstChild("Head") then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Character.Head.Position)
            end
        end
    end)

    -- ======= AIMBOT MOBILE =======
    local mobileAimbotLoop

    local function toggleAimbotMobile()
        aimbotMobile = not aimbotMobile
        if aimbotMobile then
            mobileAimbotLoop = coroutine.create(function()
                while aimbotMobile do
                    local closest, dist = nil, math.huge
                    local camPos = Camera.CFrame.Position
                    for _, p in pairs(Players:GetPlayers()) do
                        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
                            local d = (p.Character.Head.Position - camPos).Magnitude
                            if d < dist then
                                dist = d
                                closest = p
                            end
                        end
                    end
                    if closest and closest.Character and closest.Character:FindFirstChild("Head") then
                        Camera.CFrame = CFrame.new(Camera.CFrame.Position, closest.Character.Head.Position)
                    end
                    task.wait(0.15)
                end
            end)
            coroutine.resume(mobileAimbotLoop)
        elseif mobileAimbotLoop then
            coroutine.close(mobileAimbotLoop)
        end
    end

    -- ======= Função para pegar até 3 itens equipados (Backpack + Character Tools) =======
    local function getEquippedItems(player)
        local equipped = {}

        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if #equipped >= 3 then break end
                if item:IsA("Tool") then
                    table.insert(equipped, item.Name)
                end
            end
        end

        if player.Character then
            for _, item in pairs(player.Character:GetChildren()) do
                if #equipped >= 3 then break end
                if item:IsA("Tool") then
                    local alreadyHave = false
                    for _, n in pairs(equipped) do
                        if n == item.Name then
                            alreadyHave = true
                            break
                        end
                    end
                    if not alreadyHave then
                        table.insert(equipped, item.Name)
                    end
                end
            end
        end

        while #equipped < 3 do
            table.insert(equipped, "")
        end

        if #equipped == 0 then
            equipped = {"Sem inventário", "", ""}
        end

        return equipped
    end

    -- ======= ESP =======
    local espTags = {}

    local function ativarESP()
        esp = not esp
        if esp then
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
                    if not espTags[p.UserId] then
                        local head = p.Character.Head
                        local billboard = Instance.new("BillboardGui", head)
                        billboard.Name = "ESP_Tag"
                        billboard.Size = UDim2.new(0,180,0,80)
                        billboard.StudsOffset = Vector3.new(0,2,0)
                        billboard.AlwaysOnTop = true

                        local label = Instance.new("TextLabel", billboard)
                        label.Size = UDim2.new(1,0,0,24)
                        label.Position = UDim2.new(0,0,0,0)
                        label.BackgroundTransparency = 1
                        label.TextColor3 = Color3.fromRGB(0,170,255)
                        label.Font = Enum.Font.GothamBold
                        label.TextStrokeTransparency = 0
                        label.TextSize = 16

                        local itemsLabels = {}
                        for i=1,3 do
                            local itemLabel = Instance.new("TextLabel", billboard)
                            itemLabel.Size = UDim2.new(1,0,0,18)
                            itemLabel.Position = UDim2.new(0,0,0,24 + (i-1)*18)
                            itemLabel.BackgroundColor3 = Color3.new(0,0,0)
                            itemLabel.BackgroundTransparency = 0.7
                            itemLabel.TextColor3 = Color3.new(1,1,1)
                            itemLabel.Font = Enum.Font.GothamBold
                            itemLabel.TextStrokeTransparency = 0
                            itemLabel.TextSize = 14
                            itemLabel.Text = ""
                            table.insert(itemsLabels, itemLabel)
                        end

                        espTags[p.UserId] = {billboard = billboard, label = label, itemsLabels = itemsLabels}

                        RunService:BindToRenderStep("ESP_Update_"..p.UserId, 500, function()
                            if p.Character and p.Character:FindFirstChild("Head") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                local pos = p.Character.Head.Position
                                local dist = (pos - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                local equipped = getEquippedItems(p)

                                local text = p.Name .. " | " .. math.floor(dist) .. "m"
                                espTags[p.UserId].label.Text = text

                                for i=1,3 do
                                    espTags[p.UserId].itemsLabels[i].Text = equipped[i] ~= "" and equipped[i] or ""
                                    espTags[p.UserId].itemsLabels[i].Visible = equipped[i] ~= ""
                                end
                            else
                                RunService:UnbindFromRenderStep("ESP_Update_"..p.UserId)
                                if espTags[p.UserId] and espTags[p.UserId].billboard then
                                    espTags[p.UserId].billboard:Destroy()
                                end
                                espTags[p.UserId] = nil
                            end
                        end)
                    end
                end
            end
        else
            for userId, info in pairs(espTags) do
                RunService:UnbindFromRenderStep("ESP_Update_"..userId)
                if info.billboard then info.billboard:Destroy() end
                espTags[userId] = nil
            end
        end
    end

    -- ======= PUXAR ITENS =======
    local puxarItensCoroutine

    local function togglePuxarItens()
        puxarItensToggle = not puxarItensToggle
        if puxarItensToggle then
            puxarItensCoroutine = coroutine.create(function()
                while puxarItensToggle do
                    limparNotificacoes()
                    for i, item in ipairs(itens) do
                        local argsPuxar = {"mudaInv", tostring(i), item, "1"}
                        task.spawn(function()
                            pcall(function()
                                ReplicatedStorage:WaitForChild("Modules")
                                    :WaitForChild("InvRemotes")
                                    :WaitForChild("InvRequest")
                                    :InvokeServer(unpack(argsPuxar))
                            end)
                        end)
                    end
                    task.wait(0.1)
                end
            end)
            coroutine.resume(puxarItensCoroutine)
        else
            if puxarItensCoroutine then
                coroutine.close(puxarItensCoroutine)
                puxarItensCoroutine = nil
            end
        end
    end

    -- ======= REVISTAR AUTOMÁTICO =======
    local DETECTION_RADIUS = 10
    local CheckInterval = 0.5

    local detectados = {}

    local remoteFolder = ReplicatedStorage:FindFirstChild("RemoteNovos")
    if not remoteFolder then
        warn("RemoteNovos não encontrado! Ajuste o caminho do remote no script.")
        remoteFolder = ReplicatedStorage
    end

    local dsada = remoteFolder:FindFirstChild("bixobrabo")
    if not dsada then
        warn("bixobrabo não encontrado! Ajuste o nome do remote no script.")
    end

    local function isDead(player)
        if player and player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.Health <= 0 then
                return true
            end
        end
        return false
    end

    local function distanceBetween(pos1, pos2)
        return (pos1 - pos2).Magnitude
    end

    local revistarCoroutine

    local function iniciarRevistar()
        if revistarCoroutine then return end

        revistarToggle = true
        revistarCoroutine = coroutine.create(function()
            while revistarToggle do
                local char = LocalPlayer.Character
                if char and char:FindFirstChild("HumanoidRootPart") then
                    local pos = char.HumanoidRootPart.Position
                    for _, otherPlayer in pairs(Players:GetPlayers()) do
                        if otherPlayer ~= LocalPlayer and isDead(otherPlayer) and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            local otherPos = otherPlayer.Character.HumanoidRootPart.Position
                            if distanceBetween(pos, otherPos) <= DETECTION_RADIUS then
                                if not detectados[otherPlayer] then
                                    detectados[otherPlayer] = true
                                    if dsada then
                                        pcall(function()
                                            dsada:FireServer("/revistar morto")
                                        end)
                                    end
                                end
                            else
                                detectados[otherPlayer] = nil
                            end
                        end
                    end
                end
                wait(CheckInterval)
            end
        end)
        coroutine.resume(revistarCoroutine)
    end

    local function pararRevistar()
        revistarToggle = false
        detectados = {}
        if revistarCoroutine then
            revistarCoroutine = nil
        end
    end

    local function toggleRevistar()
        if revistarToggle then
            pararRevistar()
        else
            iniciarRevistar()
        end
    end

    -- ======= TELEPORTAR PARA JOGADOR QUE MATOU =======
    local ultimoMortoPorVoce = nil
    local teleportou = false

    local function teleportarParaUltimoMorto()
        if not teleportAutoAtivo then return end
        if not ultimoMortoPorVoce then return end
        if teleportou then return end
        local char = LocalPlayer.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") then return end
        if not ultimoMortoPorVoce.Character or not ultimoMortoPorVoce.Character:FindFirstChild("HumanoidRootPart") then
            ultimoMortoPorVoce = nil
            return
        end

        char.HumanoidRootPart.CFrame = ultimoMortoPorVoce.Character.HumanoidRootPart.CFrame + Vector3.new(0,3,0)
        teleportou = true
        print("Teleportado para o jogador que você matou: "..ultimoMortoPorVoce.Name)
    end

    local function monitorarMorteJogador(p)
        if p == LocalPlayer then return end
        local function conectarMorte(char)
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.Died:Connect(function()
                    local creatorTag = humanoid:FindFirstChild("creator") or humanoid:FindFirstChild("Creator")
                    if creatorTag and creatorTag.Value == LocalPlayer then
                        ultimoMortoPorVoce = p
                        teleportou = false
                        teleportarParaUltimoMorto()
                    end
                end)
            end
        end

        p.CharacterAdded:Connect(conectarMorte)
        if p.Character then
            conectarMorte(p.Character)
        end
    end

    Players.PlayerAdded:Connect(monitorarMorteJogador)
    for _, p in pairs(Players:GetPlayers()) do
        monitorarMorteJogador(p)
    end

    -- ======= UI =======
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    ScreenGui.Name = "TagsHub"
    ScreenGui.ResetOnSpawn = false

    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Size = UDim2.new(0, 420, 0, 460)
    MainFrame.Position = UDim2.new(0.3, 0, 0.2, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    MainFrame.Active = true
    MainFrame.Draggable = true
    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)

    local Title = Instance.new("TextLabel", MainFrame)
    Title.Size = UDim2.new(1, 0, 0, 36)
    Title.Text = "TagsHub"
    Title.TextColor3 = Color3.fromRGB(0, 170, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 24
    Title.BackgroundTransparency = 1

    -- Abas
    local function criarAba(nome, pos)
        local btn = Instance.new("TextButton", MainFrame)
        btn.Size = UDim2.new(0.33, -5, 0, 40)
        btn.Position = UDim2.new(pos, 5, 0, 40)
        btn.Text = nome
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 18
        btn.BackgroundColor3 = Color3.fromRGB(30,30,30)
        btn.TextColor3 = Color3.fromRGB(150,150,150)
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
        return btn
    end

    local abaCombateBtn = criarAba("Combate", 0)
    local abaVisualBtn = criarAba("Visual", 0.33)
    local abaMovimentacaoBtn = criarAba("Movimentação", 0.66)

    local function criarFrame()
        local frame = Instance.new("Frame", MainFrame)
        frame.Size = UDim2.new(1, -10, 1, -90)
        frame.Position = UDim2.new(0, 5, 0, 85)
        frame.BackgroundTransparency = 1
        frame.Visible = false
        return frame
    end

    local combateFrame = criarFrame()
    local visualFrame = criarFrame()
    local movimentacaoFrame = criarFrame()

    local function trocarAba(aba)
        for _, btn in pairs({abaCombateBtn, abaVisualBtn, abaMovimentacaoBtn}) do
            btn.TextColor3 = Color3.fromRGB(150,150,150)
        end
        combateFrame.Visible = false
        visualFrame.Visible = false
        movimentacaoFrame.Visible = false

        if aba == "Combate" then
            combateFrame.Visible = true
            abaCombateBtn.TextColor3 = Color3.fromRGB(0,170,255)
        elseif aba == "Visual" then
            visualFrame.Visible = true
            abaVisualBtn.TextColor3 = Color3.fromRGB(0,170,255)
        elseif aba == "Movimentação" then
            movimentacaoFrame.Visible = true
            abaMovimentacaoBtn.TextColor3 = Color3.fromRGB(0,170,255)
        end
    end
    trocarAba("Combate")

    abaCombateBtn.MouseButton1Click:Connect(function() trocarAba("Combate") end)
    abaVisualBtn.MouseButton1Click:Connect(function() trocarAba("Visual") end)
    abaMovimentacaoBtn.MouseButton1Click:Connect(function() trocarAba("Movimentação") end)

    local function criarBotao(frame, nome, callback)
        local btn = Instance.new("TextButton", frame)
        btn.Size = UDim2.new(1, 0, 0, 40)
        btn.Position = UDim2.new(0, 0, 0, (#frame:GetChildren()) * 45)
        btn.BackgroundColor3 = Color3.fromRGB(35,35,35)
        btn.TextColor3 = Color3.new(1,1,1)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 16
        btn.Text = nome
        btn.AutoButtonColor = false
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
        btn.MouseButton1Click:Connect(callback)
        return btn
    end

    -- COMBATE
    criarBotao(combateFrame, "Aimbot PC (botão direito)", function() aimbotPC = not aimbotPC end)
    criarBotao(combateFrame, "Aimbot Mobile (toggle)", toggleAimbotMobile)
    criarBotao(combateFrame, "Puxar Itens (toggle)", togglePuxarItens)
    criarBotao(combateFrame, "Revistar Automático (toggle)", toggleRevistar)
    criarBotao(combateFrame, "Teleporte Automático p/ Kill (toggle)", function() 
        teleportAutoAtivo = not teleportAutoAtivo
        print("Teleporte automático está agora:", teleportAutoAtivo and "Ativado" or "Desativado")
    end)

    -- VISUAL
    criarBotao(visualFrame, "Ativar / Desativar ESP", ativarESP)

    -- MOVIMENTAÇÃO
    criarBotao(movimentacaoFrame, "Noclip (Alternar)", function() noclip = not noclip end)

    print("TagsHub carregado com sucesso!")
end

local function validarKey()
    local key = textBox.Text
    if keysValidas[key] then
        mensagemErro.Text = ""
        ativarScript()
    else
        mensagemErro.Text = "Key inválida! Tente novamente."
    end
end

button.MouseButton1Click:Connect(validarKey)
textBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        validarKey()
    end
end)           
