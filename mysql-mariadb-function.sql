-- MySql Version : 8.0 and above 
-- MariaDB Version : 10.0 and above 
-- License : MIT 

-- Unicode 2 zawgyi
DROP FUNCTION if exists rabbit_uni_2_zawgyi;
DELIMITER //

CREATE FUNCTION rabbit_uni_2_zawgyi(input_text TEXT CHARSET utf8mb4)
    RETURNS TEXT CHARSET utf8mb4
    DETERMINISTIC
    BEGIN
	    RETURN CONVERT(REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE ( REPLACE(CONVERT (input_text using utf8mb4),'င်္', 'ၤ' ),'္တွ', '႖' ),'ါ်', 'ၚ' ),'ိံ', 'ႎ' ),'၎င်း', '၎' ),'[ဥဉ](?=္)', 'ၪ' ),'ဉ(?=[ုူ])', 'ဥ' ),'[ဥဉ](?=[့]?[်])', 'ဥ' ),'ည(?=[္ွ])', 'ၫ' ),'(္[က-အ])(ိ){0,1}ု', '$1$2ဳ' ),'(္[က-အ])ူ', '$1ဴ' ),'န(?=[ိီု်]?[ူွှု္])', 'ႏ' ),'န(?=်ု )', 'ႏ' ),'နြ', 'ႏြ' ),'္က', 'ၠ' ),'္ခ', 'ၡ' ),'္ဂ', 'ၢ' ),'္ဃ', 'ၣ' ),'္စ', 'ၥ' ),'္ဆ', 'ၦ' ),'္ဇ', 'ၨ' ),'္ဈ', 'ၩ' ),'္ဋ', 'ၬ' ),'ဋ္ဌ', '႒' ),'္ဌ', 'ၭ' ),'ဍ္ဍ', 'ၮ' ),'ဍ္ဎ', 'ၯ' ),'္ဏ', 'ၰ' ),'္တ', 'ၱ' ),'္ထ', 'ၳ' ),'္ဒ', 'ၵ' ),'္ဓ', 'ၶ' ),'္[နႏ]', 'ၷ' ),'္ပ', 'ၸ' ),'္ဖ', 'ၹ' ),'္ဗ', 'ၺ' ),'္ဘ', 'ၻ' ),'္မ', 'ၼ' ),'္လ', 'ႅ' ),'ဿ', 'ႆ' ),'ွှ', 'ႊ' ),'(ၤ)([က-အ])([ျြ]?)ိ', '$2$3ႋ' ),'(ၤ)([က-အ])([ျြ]?)ီ', '$2$3ႌ' ),'(ၤ)([က-အ])([ျြ]?)ံ', '$2$3ႍ' ),'(ၤ)([က-အ၀-၉])([ျြ]?)([ေ]?)', '$2$3$4$1' ),'ရ(?=([ိီ]?)[ုူွႊ])', '႐' ),'ဏ္ဍ', '႑' ),'ဋ္ဋ', '႗' ),'([က-အႏဩၪၮၯႆ႐႑႒႗႖])([ၠ-ၩၬၭၰ-ၼႅႊ])?([ျ-ှ]*)?ေ', 'ေ$1$2$3' ),'ြှ', 'ြႇ' ),'([က-အႏဩ])([ၠ-ၩၬၭၰ-ၼႅ])?(ြ)', '$3$1$2' ),'်', '္' ),'ျ', '်' ),'ြ', 'ျ' ),'ွ', 'ြ' ),'ှ', 'ွ' ),'([^်ည])ွ([ိီ]?)ု', '$1ႈ$2' ),'([ရ်ြႊႈ႐])([ူွ])?([ဲံ္ိီႋႌႍႎ]?)(ု)?့', '$1$2$3$4႕' ),'([ုနူွ])([ဲံ္ိီႋႌႍႎ]?)့', '$1$2႔' ),'([ျ])([က-အ])([ႇ]?)([ံိီႋႌႍႎ]?)ု', '$1$2$3$4ဳ' ),'([ျ])([က-အ])([ႇ]?)([ံိီႋႌႍႎ]?)ူ', '$1$2$3$4ဴ' ),'([်ြညဈဋဌဍဠဥ])([ွ]?)([ံိီႋႌႍႎ]?)ု', '$1$2$3ဳ' ),'([်ြညဈဋဌဍဠဥ])(ွ?)([ံိီႋႌႍႎ]?)ူ', '$1$2$3ဴ' ),'([ညဠဉ])ွ', '$1ႇ' ),'ွူ', 'ႉ' ),'ျ([ကဃဆဏတထဘယလယသဟ])', 'ၾ$1' ),'ၾ([ကဃဆဏတထဘယလယသဟ])([ြႊ])([ဲံိီႋႌႍႎ])', 'ႄ$1$2$3' ),'ၾ([ကဃဆဏတထဘယလယသဟ])([ြႊ])', 'ႂ$1$2' ),'ၾ([ကဃဆဏတထဘယလယသဟ])([ဳဴ]?)([ဲံိီႋႌႍႎ])', 'ႀ$1$2$3' ),'ျ([က-အ])([ြႊ])([ဲံိီႋႌႍႎ])', 'ႃ$1$2$3' ),'ျ([က-အ])([ြႊ])', 'ႁ$1$2' ),'ျ([က-အ])([ဳဴ]?)([ဲံိီႋႌႍႎ])', 'ၿ$1$2$3' ),'်ွ', 'ွ်' ),'်([ြႊ])', '$1ၽ' ),'([ဳဴ])(ံ?)႔', '$1$2႕' ),'ႏၱ', 'ႏၲ' ),'ႏၳ', 'ႏၴ' ),'([က-အ])([ၻၦ])ာ', '$1ာ$2' ),'ာ([ၻၦ])့', 'ာ$1႔' ),'၇((?=[က-အ]္)|(?=[ာ-ူဲံ-းြွ]))', 'ရ') USING utf8mb4);
    END//

DELIMITER ;
-- Zawgyi to unicode
DROP FUNCTION if exists rabbit_zawgyi_2_uni;
DELIMITER //

CREATE FUNCTION rabbit_zawgyi_2_uni(input_text TEXT CHARSET utf8mb4)
    RETURNS TEXT CHARSET utf8mb4
    DETERMINISTIC
    BEGIN
	   RETURN CONVERT(REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE ( REGEXP_REPLACE(CONVERT(input_text using utf8mb4 ) ,'([ိီွု့႕])\1+', '$1'),'​', ''),'ွြ', 'ႊ'),'(ွ|ႇ)', 'ှ'),'ြ', 'ွ'),'(ျ|ၾ|ၿ|ႀ|ႁ|ႂ|ႃ|ႄ)', 'ြ'),'(်|ၽ)', 'ျ'),'္', '်'),'(ၦ|ၧ)', '္ဆ'),'ၪ', 'ဉ'),'ၫ', 'ည'),'ၬ', '္ဋ'),'ၭ', '္ဌ'),'ၮ', 'ဍ္ဍ'),'ၯ', 'ဍ္ဎ'),'ၰ', '္ဏ'),'(ၱ|ၲ)', '္တ'),'ၠ', '္က'),'ၡ', '္ခ'),'ၢ', '္ဂ'),'ၣ', '္ဃ'),'ၥ', '္စ'),'ၨ', '္ဇ'),'ၩ', '္ဈ'),'(ၳ|ၴ)', '္ထ'),'ၵ', '္ဒ'),'ၶ', '္ဓ'),'ၷ', '္န'),'ၸ', '္ပ'),'ၹ', '္ဖ'),'ၺ', '္ဗ'),'ၼ', '္မ'),'ႅ', '္လ'),'ဳ', 'ု'),'ဴ', 'ူ'),'ဿ', 'ူ'),'ႆ', 'ဿ'),'ံႈ', 'ႈံ'),'ႈ', 'ှု'),'ႉ', 'ှူ'),'ႊ', 'ွှ'),'ျၤ', 'ၤျ'),'ြ([က-အ])([ၤႋႍ])', '$1ြ$2'),'(ေ)?([က-အ၀-၉])(ြ)?ၤ', 'င်္$1$2$3'),'(ေ)?([က-အ])(ျ|ြ)?ႋ', 'င်္$1$2$3ိ'),'(ေ)?([က-အ])(ျ)?ႌ', 'င်္$1$2$3ီ'),'(ေ)?([က-အ])([ျြ])?ႍ', 'င်္$1$2$3ံ'),'ႎ', 'ိံ'),'ႏ', 'န'),'႐', 'ရ'),'႑', 'ဏ္ဍ'),'႒', 'ဋ္ဌ'),'မာ(ၻ|႓)', 'မ္ဘာ'),'(ၻ|႓)', '္ဘ'),'(႔|႕)', '့'),'([က-အ])့ဲ', '$1ဲ့'),'႖', '္တွ'),'႗', 'ဋ္ဋ'),'ြ([က-အ])([က-အ])?', '$1ြ$2'),'([က-အ])ြ်', 'ြ$1်'),'၇(?=[ာ-ူဲံ-းွး])', 'ရ'),'ေ၇', 'ေရ'),'၀(ီ|ု|ို|ူ|ံ|ွ|ှ)', 'ဝ$1'),'([^၀၁၂၃၄၅၆၇၈၉])၀ါ', '$1ဝါ'),'([၀၁၂၃၄၅၆၇၈၉])၀ါ(?!း)', '$1ဝါ'),'^၀(?=ါ)', 'ဝ'),'၀ိ(?! ?/)', 'ဝိ'),'([^၀-၉])၀([^၀-၉ ]|[၊။])', '$1ဝ$2'),'([^၀-၉])၀(?=[\f\n\r])', '$1ဝ'),'([^၀-၉])၀$', '$1ဝ'),'ေ([က-အဿ])(ှ)?(ျ)?', '$1$2$3ေ'),'([က-အ])ေ([ျြွှ]+)', '$1$2ေ'),'ဲွ', 'ွဲ'),'([ိီ])ျ', 'ျ$1'),'ွျ', 'ျွ'),'့်', '့်'),'ု(ိ|ီ|ံ|့)ု', 'ု$1'),'(ု|ူ)(ိ|ီ)', '$2$1'),'(ှ)(ျ|ြ)', '$2$1'),'ဥ(?=[့]?[်ာ])', 'ဉ'),'ဦ', 'ဦ'),'စျ', 'ဈ'),'ံ(ု|ူ)', '$1ံ'),'ေ့ှ', 'ှေ့'),'ေှာ', 'ှော'),'ၚ', 'ါ်'),'ေျှ', 'ျှေ'),'(ိ|ီ)(ွ|ှ)', '$2$1'),'ာ္([က-အ])', '္$1ာ'),'္ြ်္([က-အ])', '်္$1ြ'),'ြ္([က-အ])', '္$1ြ'),'ံ္([က-အ])', '္$1ံ'),'၎', '၎င်း'),'၀(ါ|ာ|ံ)', 'ဝ$1'),'ဥ္', 'ဉ္'),'([က-အ])ြေွ', '$1ြွေ'),'([က-အ])ျေွ(ှ)?', '$1ျွ$2ေ'),'([က-အ])ွေျ', '$1ျွေ'),'([က-အ])ေ(္[က-အ]ွ?)', '$1$2ေ'),'း်', '်း'),'ိ်|်ိ', 'ိ'),'ို်', 'ို'),' ့', '့'),'့ံ', 'ံ့'),'[ိ]+', 'ိ'),'[်]+', '်'),'[ွ]+', 'ွ'),'[့]+', '့'),'[ီ]+', 'ီ'),'ိီ|ီိ', 'ီ'),'ုိ', 'ို'),'့့', '့'),'ဲဲ', 'ဲ'),'၄င်း', '၎င်း'),'([ိီ])္([က-အ])', '္$2$1'),'(ြေ)္([က-အ])', '္$2$1'),'ံွ', 'ွံ'),'၇((?=[က-အ]်)|(?=[ာ-ူဲံ-းွှ]))', 'ရ') USING utf8mb4);
    END//

DELIMITER ;
