require "./lib/article"
require 'pry'
require 'json'

describe Article do 

  scenario = 
            '{
              "logs": [
                {
                  "url": "//www.archdaily.com/345048/nirma-vidyavihar-apurva-amin-architects",
                  "token": "345048",
                  "thumbnail": "//images.adsttc.com/media/images/5143/8a8e/b3fc/4baa/2c00/000e/small_jpg/NVV1_AAA_09.jpg?1363380874",
                  "title": "Nirma Vidyavihar / Apurva Amin Architects"
                }
              ],
              "content": [],
              "myad": [
              ]
            }'

  scenario1 = JSON.parse(scenario)
  context "Given scenario 1" do
    it "returns [345048]" do
    	article = Article.new
    	message = article.recomended(scenario1)
      expect(message).to eq([345048])
    end
  end

    scenario = 
              '{
                "logs": [
                  {
                    "url": "//www.archdaily.com/790952/vigneux-sur-seine-housing-margot-duclot-architectes-associes",
                    "token": "790952",
                    "thumbnail": "//images.adsttc.com/media/images/577e/4943/e58e/cea4/f500/0149/small_jpg/MDAA_VIGNEUX_HD-4%C2%A911h45.jpg?1467894052",
                    "title": "Vigneux-Sur-Seine Housing / Margot-Duclot architectes associ\u00e9s"
                  },
                  {
                    "url": "//www.archdaily.com/802358/modular-house-dubldom-bio-architects",
                    "token": "802358",
                    "thumbnail": "//images.adsttc.com/media/images/5861/e0b7/e58e/ce50/7900/029c/small_jpg/interior-01.jpg?1482809510",
                    "title": "Modular House DublDom / BIO-architects"
                  },
                  {
                    "url": "//www.archdaily.com/788138/60-social-housing-apartments-in-rive-de-gier-tectoniques-architects",
                    "token": "788138",
                    "thumbnail": "//images.adsttc.com/media/images/5743/f056/e58e/ce1e/dd00/00d9/small_jpg/RIVE_DE_GIER_1S2-5.jpg?1464070176",
                    "title": "60 Social Housing Apartments in Rive-De-Gier  / Tectoniques Architects"
                  }
                ],
                "content": [
                  {
                    "url": "//www.archdaily.com/103678/riva-del-garda-hospital-atenastudio",
                    "token": "103678",
                    "thumbnail": "//images.adsttc.com/media/images/55f6/f706/adbc/0139/a000/02ed/small_jpg/4-325.jpg?1442248427",
                    "title": "Re-Development of the Former Hospital/ the New Housing City / ATENASTUDIO + 3TI PROGETTI ITALIA + KREJ ENGINEERING"
                  },
                  {
                    "url": "//www.archdaily.com/562873/piet-and-sarah-copper-extension-atelier-vens-vanbelle",
                    "token": "562873",
                    "thumbnail": "//images.adsttc.com/media/images/5451/8a23/e58e/ce4c/0800/0017/small_jpg/MPN116.jpg?1414629900",
                    "title": "Piet & Sarah - Copper Extension / Atelier Vens Vanbelle"
                  },
                  {
                    "url": "//www.archdaily.com/385093/centre-village-5468796-architecture",
                    "token": "385093",
                    "thumbnail": "//images.adsttc.com/media/images/51b3/aec2/b3fc/4b28/0700/00ae/small_jpg/Centre_Village_JB_06.jpg?1370730138",
                    "title": "Centre Village  / 5468796 Architecture + Cohlmeyer Architecture Limited"
                  },
                  {
                    "url": "//www.archdaily.com/803992/recreational-community-center-chatelaine-nil-balexert-stendardo-menningen-architectes",
                    "token": "803992",
                    "thumbnail": "//images.adsttc.com/media/images/5886/8325/e58e/ce62/cc00/0054/small_jpg/161222_STM_41.jpg?1485210392",
                    "title": "Recreational Community Center Ch\u00e2telaine \u2013 Balexert  / STENDARDO MENNINGEN ARCHITECTES"
                  }
                ],
                "myad": [
                  {
                    "url": "//www.archdaily.com/788138/60-social-housing-apartments-in-rive-de-gier-tectoniques-architects",
                    "token": "788138",
                    "thumbnail": "//images.adsttc.com/media/images/5743/f056/e58e/ce1e/dd00/00d9/small_jpg/RIVE_DE_GIER_1S2-5.jpg?1464070176",
                    "title": "60 Social Housing Apartments in Rive-De-Gier  / Tectoniques Architects"
                  },
                  {
                    "url": "//www.archdaily.com/769163/housing-in-auvry-barbusse-tectone",
                    "token": "769163",
                    "thumbnail": "//images.adsttc.com/media/images/558b/6de4/e58e/ce41/0700/01ce/small_jpg/portada_CDM_-_234.jpg?1435200988",
                    "title": "Housing in Auvry Barbusse / Tect\u00f4ne"
                  },
                  {
                    "url": "//www.archdaily.com/789357/escherpark-e2a",
                    "token": "789357",
                    "thumbnail": "//images.adsttc.com/media/images/575d/c7c3/e58e/ceb2/ac00/0148/small_jpg/E2A_Escherpark-1_RasmusNorlander.jpg?1465763767",
                    "title": "Escherpark / E2A"
                  }
                ]
              }'

  scenario2 = JSON.parse(scenario)
  context "given scenario 2" do
    it "returns [790952, 103678, 788138, 802358]" do
    	article = Article.new
    	message = article.recomended(scenario2)
      expect(message).to eq([790952, 103678, 788138, 802358])
    end
  end

 
scenario = 
          '{
            "content": [
              {
                "url": "//www.archdaily.com/103678/riva-del-garda-hospital-atenastudio",
                "token": "103678",
                "thumbnail": "//images.adsttc.com/media/images/55f6/f706/adbc/0139/a000/02ed/small_jpg/4-325.jpg?1442248427",
                "title": "Re-Development of the Former Hospital/ the New Housing City / ATENASTUDIO + 3TI PROGETTI ITALIA + KREJ ENGINEERING"
              }
            ],
            "logs": [
              {
                "url": "//www.archdaily.com/790952/vigneux-sur-seine-housing-margot-duclot-architectes-associes",
                "token": "790952",
                "thumbnail": "//images.adsttc.com/media/images/577e/4943/e58e/cea4/f500/0149/small_jpg/MDAA_VIGNEUX_HD-4%C2%A911h45.jpg?1467894052",
                "title": "Vigneux-Sur-Seine Housing / Margot-Duclot architectes associ\u00e9s"
              },
              {
                "url": "//www.archdaily.com/802358/modular-house-dubldom-bio-architects",
                "token": "802358",
                "thumbnail": "//images.adsttc.com/media/images/5861/e0b7/e58e/ce50/7900/029c/small_jpg/interior-01.jpg?1482809510",
                "title": "Modular House DublDom / BIO-architects"
              },
              {
                "url": "//www.archdaily.com/788138/60-social-housing-apartments-in-rive-de-gier-tectoniques-architects",
                "token": "788138",
                "thumbnail": "//images.adsttc.com/media/images/5743/f056/e58e/ce1e/dd00/00d9/small_jpg/RIVE_DE_GIER_1S2-5.jpg?1464070176",
                "title": "60 Social Housing Apartments in Rive-De-Gier  / Tectoniques Architects"
              }
            ],
            "myad": [
            ]
          }'

  scenario3 = JSON.parse(scenario)
  context "given scenario 3" do
    it "returns [345048]" do
    	article = Article.new
    	message = article.recomended(scenario3)
      expect(message).to eq([103678, 790952, 802358, 788138])
    end
  end

scenario = 
          '{
            "logs": [
              {
                "url": "//www.archdaily.com/790952/vigneux-sur-seine-housing-margot-duclot-architectes-associes",
                "token": "790952",
                "thumbnail": "//images.adsttc.com/media/images/577e/4943/e58e/cea4/f500/0149/small_jpg/MDAA_VIGNEUX_HD-4%C2%A911h45.jpg?1467894052",
                "title": "Vigneux-Sur-Seine Housing / Margot-Duclot architectes associ\u00e9s"
              },
              {
                "url": "//www.archdaily.com/802358/modular-house-dubldom-bio-architects",
                "token": "802358",
                "thumbnail": "//images.adsttc.com/media/images/5861/e0b7/e58e/ce50/7900/029c/small_jpg/interior-01.jpg?1482809510",
                "title": "Modular House DublDom / BIO-architects"
              },
              {
                "url": "//www.archdaily.com/788138/60-social-housing-apartments-in-rive-de-gier-tectoniques-architects",
                "token": "788138",
                "thumbnail": "//images.adsttc.com/media/images/5743/f056/e58e/ce1e/dd00/00d9/small_jpg/RIVE_DE_GIER_1S2-5.jpg?1464070176",
                "title": "70 Social Housing Apartments in Rive-De-Gier  / Tectoniques Architects"
              }
            ],
            "content": [
              {
                "url": "//www.archdaily.com/103678/riva-del-garda-hospital-atenastudio",
                "token": "103678",
                "thumbnail": "//images.adsttc.com/media/images/55f6/f706/adbc/0139/a000/02ed/small_jpg/4-325.jpg?1442248427",
                "title": "Re-Development of the Former Hospital/ the New Housing City / ATENASTUDIO + 3TI PROGETTI ITALIA + KREJ ENGINEERING"
              },
              {
                "url": "//www.archdaily.com/562873/piet-and-sarah-copper-extension-atelier-vens-vanbelle",
                "token": "562873",
                "thumbnail": "//images.adsttc.com/media/images/5451/8a23/e58e/ce4c/0800/0017/small_jpg/MPN116.jpg?1414629900",
                "title": "Piet & Sarah - Copper Extension / Atelier Vens Vanbelle"
              },
              {
                "url": "//www.archdaily.com/385093/centre-village-5468796-architecture",
                "token": "385093",
                "thumbnail": "//images.adsttc.com/media/images/51b3/aec2/b3fc/4b28/0700/00ae/small_jpg/Centre_Village_JB_06.jpg?1370730138",
                "title": "Centre Village  / 5468796 Architecture + Cohlmeyer Architecture Limited"
              },
              {
                "url": "//www.archdaily.com/803992/recreational-community-center-chatelaine-nil-balexert-stendardo-menningen-architectes",
                "token": "803992",
                "thumbnail": "//images.adsttc.com/media/images/5886/8325/e58e/ce62/cc00/0054/small_jpg/161222_STM_41.jpg?1485210392",
                "title": "Recreational Community Center Ch\u00e2telaine \u2013 Balexert  / STENDARDO MENNINGEN ARCHITECTES"
              }
            ],
            "myad": [
            ]
          }'

  scenario4 = JSON.parse(scenario)
  context "given scenario 4" do
    it "returns [790952, 103678, 802358, 562873]" do
    	article = Article.new
    	message = article.recomended(scenario4)
      expect(message).to eq([790952, 103678, 802358, 562873])
    end
  end

end