abstract class AppConstants {
  static const duration200 = Duration(milliseconds: 200);

  static const foodTypes = ['fruit', 'berry', 'vegetable'];

  static const Map<String, List<String>> foodsByType = {
    'fruit': ['Apple', 'Banana', 'Orange', 'Lemon', 'Mango', 'Pineapple', 'Peach', 'Pear', 'Grapefruit', 'Papaya', 'Kiwi', 'Pomegranate',],
    'berry': ['Strawberry', 'Blueberry', 'Raspberry', 'Watermelon', 'Lychee', 'Grape', 'Fig', 'Cherry',],
    'vegetable': ['Tomato', 'Cucumber', 'Cabbage', 'Carrot', 'Broccoli', 'Red Bell Pepper', 'Radish', 'Onion', 'Potato', 'Pumpkin', 'Garlic',],
  };

  static const Map<String, String> foodsImage = {
    'Apple': 'assets/images/apple.png',
    'Banana': 'assets/images/banana.png',
    'Orange': 'assets/images/orange.png',
    'Lemon': 'assets/images/lemon.png',
    'Mango': 'assets/images/mango.png',
    'Pineapple': 'assets/images/Pineapple.png',
    'Peach': 'assets/images/peach.png',
    'Pear': 'assets/images/pear.png',
    'Grapefruit': 'assets/images/Grapefruit.png',
    'Papaya': 'assets/images/papaya.png',
    'Kiwi': 'assets/images/kiwi.png',
    'Pomegranate': 'assets/images/pomegranate.png',
    'Strawberry': 'assets/images/strawberry.png',
    'Blueberry': 'assets/images/blueberries.png',
    'Raspberry': 'assets/images/raspberry.png',
    'Watermelon': 'assets/images/watermelon.png',
    'Lychee': 'assets/images/Lychee.png',
    'Grape': 'assets/images/grapes.png',
    'Fig': 'assets/images/fig.png',
    'Cherry': 'assets/images/cherry.png',
    'Tomato': 'assets/images/tomato.png',
    'Cucumber': 'assets/images/cucumber.png',
    'Cabbage': 'assets/images/cabbage.png',
    'Carrot': 'assets/images/carrot.png',
    'Broccoli': 'assets/images/broccoli.png',
    'Red Bell Pepper': 'assets/images/red bell pepper.png',
    'Radish': 'assets/images/radish.png',
    'Onion': 'assets/images/onion.png',
    'Potato': 'assets/images/potato.png',
    'Pumpkin': 'assets/images/pumpkin.png',
    'Garlic': 'assets/images/garlic.png',
  };


  static const Map<String, (String origin, String enviromentalConditions, String howToChoose)> foodDescription = {
    'Apple' : (
    'The apple (Malus domestica) originates from Central Asia, specifically the region of Kazakhstan. It has been cultivated for thousands of years and spread through trade routes to Europe and America. Today, apples are grown in temperate climates worldwide, with major producers including China, the USA, and Poland.',
    'Apples thrive in temperate regions with distinct seasons. Cold winters help trees enter dormancy, while warm summers enhance sugar content. Soil quality, rainfall, and altitude also impact the fruit’s texture and taste.',
    'How to Choose an Apple: Select apples that are firm, smooth-skinned, and free from bruises or soft spots. The color should be vibrant, and a fresh apple should have a slightly sweet aroma. Different varieties have unique textures and flavors, so choose based on preference.'
    ),
    'Banana' : (
    'The banana (Musa spp.) is believed to have originated in Southeast Asia, particularly in regions of Malaysia, Indonesia, and the Philippines. It was later introduced to Africa and the Americas through trade and colonial expansion. Today, major banana-producing countries include India, Ecuador, the Philippines, and Brazil.',
    'Bananas require a warm, tropical climate with consistent rainfall. They thrive in well-drained, nutrient-rich soil. High humidity promotes growth, while prolonged drought or extreme temperatures can affect yield and fruit quality.',
    'Look for bananas with bright yellow skin and minimal brown spots for a perfect balance of sweetness and firmness. Green bananas will ripen over time, while heavily spotted ones are best for baking or smoothies. Avoid overly soft or split bananas.',
    ),
    'Orange' : (
    'The orange (Citrus × sinensis) is believed to have originated in China and was later introduced to Europe and the Americas via trade routes. Today, oranges are widely cultivated in tropical and subtropical regions, with Brazil, the USA (Florida, California), and Spain among the largest producers.',
    'Oranges thrive in warm, sunny climates with moderate rainfall. They require well-drained soil and benefit from cooler nights to develop their sweetness. Frost can damage crops, while excessive heat may reduce fruit quality.',
    'Select oranges that feel heavy for their size, as they contain more juice. The skin should be firm, smooth, and bright in color. Avoid oranges with soft spots, mold, or wrinkled skin.'
    ),
    'Lemon' : (
    'The lemon (Citrus limon) is thought to have originated in northern India and was spread to the Mediterranean and the Americas by traders and explorers. Today, lemons are widely grown in Italy, Spain, the USA (California, Arizona), and Argentina.',
    'Lemons require a warm, sunny climate with well-drained soil. They are sensitive to frost but can tolerate drought better than other citrus fruits. Optimal growing conditions enhance their acidity and essential oil content.',
    'Look for lemons with smooth, glossy skin that feels firm and heavy for their size. Thin-skinned lemons tend to have more juice. Avoid those with soft spots or dull, wrinkled skin.',
    ),
    'Mango' : (
    'The mango (Mangifera indica) originates from South Asia, particularly India and Myanmar, where it has been cultivated for over 4,000 years. It spread to Africa, the Americas, and the Caribbean via trade. Major producers include India, Thailand, Mexico, and Brazil.',
    'Mangoes thrive in warm, tropical climates with distinct wet and dry seasons. They require well-drained, sandy soil and benefit from high humidity. Prolonged drought or excess rainfall can affect fruit development and flavor.',
    'Choose mangoes that yield slightly to gentle pressure and have a fragrant aroma near the stem. Skin color varies by variety, so focus on texture rather than color. Avoid hard, underripe mangoes or those with wrinkled, shriveled skin.',
    ),
    'Pineapple' : (
    'The pineapple (Ananas comosus) is native to South America, particularly Brazil and Paraguay. It was introduced to Europe by Spanish explorers and later cultivated in tropical regions worldwide. Leading producers today include Costa Rica, the Philippines, and Thailand.',
    'Pineapples grow best in tropical climates with warm temperatures and high humidity. They require well-drained, slightly acidic soil. Too much rainfall can cause rot, while cooler temperatures slow growth.',
    'Select a pineapple with a sweet aroma at the base. The skin should be firm, golden-yellow, and slightly flexible when squeezed. Avoid pineapples with soft spots, mold, or an overly green appearance.'
    ),
    'Peach' : (
    'The peach (Prunus persica) originated in China and spread to Persia (modern Iran) before reaching Europe and the Americas. Today, major producers include China, Italy, Spain, and the USA (Georgia, California).',
    'Peaches require a temperate climate with cold winters and warm summers. They thrive in well-drained soil and need adequate sunlight to develop their natural sugars. Late frosts can harm early blooms.',
    'Look for peaches with a sweet fragrance and smooth, slightly fuzzy skin. They should yield slightly when pressed. Avoid greenish peaches, as they were picked too early, and those with bruises or wrinkled skin.',
    ),
    'Pear' : (
    'The pear (Pyrus spp.) has been cultivated for over 3,000 years, originating in regions of Europe and Asia. It was later introduced to the Americas. Today, China, Italy, and the USA are leading producers.',
    'Pears grow best in temperate climates with well-drained soil and adequate chilling hours in winter. Dry summers improve sugar content, while excess moisture can lead to disease.',
    'Select pears that yield slightly when pressed at the neck. They should have smooth, unblemished skin. Avoid overly soft pears, as they may be overripe, and store firm ones at room temperature to ripen.'
    ),
    'Grapefruit' : (
    'The grapefruit (Citrus × paradisi) is a hybrid between the pomelo and sweet orange, first discovered in the Caribbean. It is now cultivated primarily in the USA (Florida, Texas), Mexico, and China.',
    'Grapefruits require warm temperatures and well-drained, sandy soil. Cool nights help develop sweetness, while excessive heat can lead to dry, bitter fruit.',
    'Look for grapefruits with smooth, firm skin that feels heavy for its size. A bright color indicates ripeness. Avoid soft spots or overly rough skin.'
    ),
    'Papaya' : (
    'The papaya (Carica papaya) is native to Central America and was spread to tropical regions worldwide by Spanish explorers. Today, it is cultivated in Mexico, India, and Brazil.',
    'Papayas thrive in warm, humid climates with well-drained soil. They are sensitive to cold temperatures and require consistent sunlight for optimal growth and sweetness.',
    'Choose papayas with yellow-orange skin that yields slightly to pressure. A sweet aroma at the stem end indicates ripeness. Avoid overly green or bruised fruits.'
    ),
    'Kiwi' : (
    'The kiwi (Actinidia deliciosa) originates from China but was popularized in New Zealand, which remains a major producer alongside Italy and Chile.',
    'Kiwis require a temperate climate with well-drained, fertile soil. They need a frost-free growing season and moderate rainfall. Excess humidity can lead to disease.',
    'Pick kiwis that yield slightly when pressed. The skin should be firm but not hard. Avoid wrinkled or overly soft fruits, which may be overripe.'
    ),
    'Pomegranate' : (
    'The pomegranate (Punica granatum) is native to the Middle East and South Asia. It spread to Mediterranean regions and the Americas. Today, India, Iran, and the USA are leading producers.',
    'Pomegranates prefer hot, arid climates with minimal rainfall. They thrive in sandy, well-drained soil. Too much humidity can affect fruit quality.',
    'Select pomegranates that feel heavy for their size. The skin should be firm and vibrant in color. Avoid fruits with cracks or soft spots.'
    ),
    'Strawberry' : (
    'The strawberry (Fragaria × ananassa) originated in Europe in the 18th century as a hybrid of wild North and South American species. Earlier, wild strawberries had been consumed for centuries. Today, strawberries are cultivated worldwide, with the USA, Mexico, Spain, and Turkey among the largest producers.',
    'Strawberries thrive in temperate climates with well-drained soil. They require adequate sunlight for sugar development. Excessive rain can lead to fungal diseases, while extreme heat can cause fruit to soften too quickly.',
    'Look for bright red strawberries with a glossy surface and fresh green leaves. They should be firm but not hard. Avoid berries with white or green tips, as they may be underripe, and those with dark spots or mold.'
    ),
    'Blueberry' : (
    'The blueberry (Vaccinium spp.) is native to North America, where indigenous peoples consumed it for centuries. Commercial cultivation began in the early 20th century. Today, the USA, Canada, Poland, and Chile are major producers.',
    'Blueberries prefer acidic, well-drained soil and cool climates. Cold winters improve fruit quality, while excessive heat can reduce yields. Consistent moisture is essential but overwatering can harm the roots.',
    'Select blueberries that are firm, plump, and deep blue with a silvery-white bloom. Avoid shriveled or overly soft berries, as they may be overripe. A uniform size indicates even ripening.'
    ),
    'Raspberry' : (
    'The raspberry (Rubus idaeus) originated in Europe and Asia, with records of its cultivation dating back to ancient Rome. It later spread to North America. Today, Russia, the USA, and Serbia lead global production.',
    'Raspberries thrive in cool, temperate regions with well-drained soil. They require consistent moisture but are sensitive to excessive humidity, which can lead to mold. Proper airflow is key to high-quality fruit.',
    'Pick raspberries that are plump, deep-colored, and dry. They should be firm yet delicate. Avoid berries that are mushy, damp, or leaking juice, as they spoil quickly.'
    ),
    'Watermelon' : (
    'The watermelon (Citrullus lanatus) is native to Africa, where it has been cultivated for over 4,000 years. It spread to the Mediterranean and later to the Americas. Today, China, Turkey, and India are top producers.',
    'Watermelons require hot, sunny climates and well-drained, sandy soil. Consistent warmth ensures high sugar content, while drought stress can reduce size and flavor. Too much rain may cause splitting.',
    'Select a watermelon with a uniform shape and a creamy yellow spot on one side, indicating ripeness. It should feel heavy for its size and produce a deep, hollow sound when tapped. Avoid watermelons with soft spots or cracks.'
    ),
    'Lychee' : (
    'The lychee (Litchi chinensis) is native to China, where it has been cultivated for over 2,000 years. It later spread to Southeast Asia and the Caribbean. China, India, and Thailand are the largest producers today.',
    'Lychees grow in warm, humid climates with well-drained, slightly acidic soil. They require a distinct cool season to flower properly. Excess moisture during harvest can cause cracking and spoilage.',
    'Look for lychees with bright pink-red skin and a slightly bumpy texture. They should feel firm but yield slightly under gentle pressure. Avoid fruits with dark spots or dry, brittle shells.'
    ),
    'Grape' : (
    'The grape (Vitis spp.) has been cultivated for over 6,000 years, originating in the Middle East and Mediterranean regions. It spread worldwide through trade and is now grown extensively in Italy, France, Spain, and the USA.',
    'Grapes thrive in temperate and Mediterranean climates with well-drained soil. They require warm days and cool nights to develop their sugars. Excessive rain can lead to fungal diseases and split fruit.',
    'Select grapes that are plump, firm, and firmly attached to the stem. They should have a vibrant color and a natural powdery bloom. Avoid shriveled or soft grapes, as they may be overripe.'
    ),
    'Fig' : (
    'The fig (Ficus carica) is one of the oldest cultivated fruits, originating in the Mediterranean and Middle East. It was widely consumed by ancient civilizations. Today, Turkey, Egypt, and Greece are leading producers.',
    'Figs require warm, dry climates with well-drained soil. Too much moisture can lead to fruit splitting, while cold temperatures may damage the tree. They need ample sunlight for optimal sweetness.',
    'Choose figs that are soft but not mushy, with smooth, intact skin. They should have a sweet aroma. Avoid figs that are hard, dry, or leaking juice, as they may be overripe.'
    ),
    'Cherry' : (
    'The cherry (Prunus spp.) has been cultivated for thousands of years, originating in Europe and western Asia. It was spread by the Romans and is now grown in the USA, Turkey, and Italy.',
    'Cherries require a temperate climate with cold winters and warm summers. They need well-drained soil and moderate rainfall. Excess rain before harvest can cause splitting and spoilage.',
    'Select cherries that are plump, firm, and glossy. The color should be deep and vibrant. Stems should be green and flexible. Avoid cherries with wrinkled skin or brown spots.'
    ),
    'Tomato' : (
    'The tomato (Solanum lycopersicum) originates from South America, particularly in the Andean region (modern-day Peru, Ecuador, and northern Chile). It was domesticated by the Aztecs in Mexico and later introduced to Europe by Spanish explorers in the 16th century. Today, China, India, and the USA are among the top producers.',
    'Tomatoes require warm temperatures, well-drained soil, and consistent sunlight. Excess moisture can cause fungal diseases, while insufficient warmth may lead to poor fruit set. Soil richness influences flavor and texture.',
    'Pick tomatoes that are firm but slightly yielding, with smooth, brightly colored skin. They should have a mild, sweet aroma at the stem. Avoid tomatoes with wrinkles, cracks, or soft spots.'
    ),
    'Cucumber' : (
    'Cucumbers (Cucumis sativus) originated in India over 3,000 years ago. They spread through the Middle East and Europe via trade routes and became a staple in many cuisines. Today, China dominates global cucumber production.',
    'Cucumbers thrive in warm, humid climates with nutrient-rich, well-drained soil. Consistent watering prevents bitterness, while too much direct sun can cause dehydration and curling.',
    'Select cucumbers that are firm, dark green, and free from wrinkles or soft spots. A smooth, slightly glossy skin indicates freshness. Avoid cucumbers that appear overly soft or yellowed.'
    ),
    'Cabbage' : (
    'Cabbage (Brassica oleracea) is believed to have originated in the Mediterranean region over 4,000 years ago. It was widely cultivated by ancient Greeks and Romans. Today, China, India, and Russia are leading producers.',
    'Cabbage prefers cool climates and fertile, well-drained soil. It requires consistent moisture for proper head formation. High temperatures may lead to loose, bitter leaves.',
    'Choose a cabbage that is heavy for its size with tightly packed, crisp leaves. The outer leaves should be fresh and vibrant, not wilted or yellowing. Avoid heads with cracks or bruises.'
    ),
    'Carrot' : (
    'Carrots (Daucus carota) originated in Persia (modern Iran and Afghanistan) over 1,000 years ago. They were originally purple and yellow before the familiar orange variety was developed in the Netherlands. China, Uzbekistan, and the USA are major producers today.',
    'Carrots grow best in loose, well-drained soil and cool to moderate climates. Excessive heat can lead to bitterness, while compacted soil may cause misshapen roots.',
    'Look for carrots that are firm, smooth, and brightly colored. They should have minimal cracks and fresh green tops if attached. Avoid limp, soft, or overly large carrots, as they may be woody inside.'
    ),
    'Broccoli' : (
    'Broccoli (Brassica oleracea var. italica) traces its roots to the Mediterranean, where it was cultivated in ancient Rome. It gained popularity in Europe and later in the USA in the 20th century. China and India lead global production today.',
    'Broccoli prefers cool temperatures and fertile, moist soil. Hot weather can cause premature flowering, making the heads bitter and tough. Proper irrigation ensures tender florets.',
    'Select broccoli with firm, tightly packed florets and a deep green (or purple-tinged) color. Stems should be fresh and not woody. Avoid broccoli with yellowing florets or limp stems.'
    ),
    'Red Bell Pepper' : (
    'Red bell peppers (Capsicum annuum) originated in Central and South America. They were cultivated by indigenous people for thousands of years before spreading worldwide. China, Mexico, and Indonesia are now top producers.',
    'Bell peppers require warm temperatures and well-drained soil. They need ample sunlight for sweetness to develop. Too much rain can cause cracking, while extreme heat may stunt growth.',
    'Choose peppers with firm, glossy skin and vibrant color. They should feel heavy for their size. Avoid wrinkled, soft, or bruised peppers, as these indicate age or damage.'
    ),
    'Radish' : (
    'Radishes (Raphanus sativus) were first cultivated in Southeast Asia and later in Egypt and Greece over 2,000 years ago. They became a staple in European and Asian cuisines. Today, China, Japan, and South Korea are major producers.',
    'Radishes grow best in cool, moist soil. Hot weather can cause them to become overly spicy or woody. Rapid, consistent growth leads to crisp, mild-flavored roots.',
    'Pick radishes that are firm, smooth, and brightly colored. Their greens should be fresh and unwilted. Avoid soft, shriveled, or cracked radishes, as they may be old.'
    ),
    'Onion' : (
    'Onions (Allium cepa) are one of the oldest cultivated vegetables, with origins in Central Asia. They were widely used in ancient Egyptian, Greek, and Roman diets. Today, India and China are leading onion producers.',
    'Onions require well-drained soil and a dry climate for proper bulb development. Too much moisture can lead to rot, while extreme heat may cause premature flowering.',
    'Look for onions that are firm, with dry, papery outer skin. Avoid bulbs with soft spots, mold, or sprouting, as these indicate aging.'
    ),
    'Potato' : (
    'The potato (Solanum tuberosum) originated in the Andes Mountains of South America. Indigenous people domesticated it over 7,000 years ago, and Spanish explorers introduced it to Europe in the 16th century. China and India lead modern production.',
    'Potatoes thrive in cool, well-drained soil. Excessive moisture can cause rot, while poor soil quality affects size and flavor. Consistent temperatures ensure smooth skin and optimal starch content.',
    'Select potatoes that are firm and smooth, without sprouts, bruises, or green spots. A good potato should feel heavy for its size.'
    ),
    'Pumpkin' : (
    'Pumpkins (Cucurbita spp.) are native to North and Central America, where they were cultivated by indigenous peoples for thousands of years. They became a staple in European agriculture after the Columbian exchange. Today, the USA, China, and India are top producers.',
    'Pumpkins require warm weather, fertile soil, and consistent watering. A long growing season is essential for proper ripening. Sudden frosts or droughts can affect yield and texture.',
    'Pick a pumpkin that is heavy for its size with firm, unblemished skin. A deep orange color indicates ripeness. Avoid pumpkins with soft spots or mold.'
    ),
    'Garlic' : (
    'Garlic (Allium sativum) has been cultivated for over 5,000 years, originating in Central Asia. It spread through trade routes to Egypt, Greece, and China. Today, China is the largest producer of garlic.',
    'Garlic grows best in well-drained, nutrient-rich soil with moderate rainfall. It requires a cold period for proper bulb development. Too much moisture can lead to fungal diseases.',
    'Select bulbs that are firm, with tightly packed cloves and dry outer skin. Avoid garlic with sprouting cloves or soft spots, as this indicates aging.'
    ),
  };
  static const Map<String, Map<String, double>> foodMainVitamins = {
    'Apple': {'C': 4.6, 'K': 2.2, 'B1': 0.017, 'B2': 0.026, 'B6': 0.041,},
    'Banana': {'C': 8.7, 'B6': 0.367, 'B4': 9.8, 'B5': 0.334, 'B3': 0.665,},
    'Orange': {'C': 53.2, 'B1': 0.087, 'B9': 30.0, 'A': 225.0, 'B2': 0.04,},
    'Lemon': {'C': 53.0, 'B1': 0.04, 'B2': 0.02, 'B5': 0.19, 'B6': 0.08,},
    'Mango': {'C': 36.4, 'A': 54.0, 'E': 0.9, 'K': 4.2, 'B6': 0.119,},
    'Pineapple': {'C': 47.8, 'B1': 0.079, 'B6': 0.112, 'B3': 0.5, 'B5': 0.213,},
    'Peach': {'C': 6.6, 'B3': 0.806, 'B4': 6.1, 'B5': 0.153, 'B2': 0.031,},
    'Pear': {'C': 4.3, 'K': 4.5, 'B2': 0.025, 'B3': 0.161, 'B6': 0.028,},
    'Grapefruit': {'C': 31.2, 'A': 1150.0, 'B5': 0.283, '1': 0.043, 'B6': 0.052,},
    'Papaya': {'C': 60.9, 'A': 47.0, 'B9': 37.0, 'E': 0.3, 'K': 2.6,},
    'Kiwi': {'C': 92.7, 'K': 40.3, 'E': 1.5, 'B9': 25.0, 'B6': 0.063,},
    'Pomegranate': {'C': 10.2, 'K': 16.4, 'B5': 0.377, 'B6': 0.075, 'B1': 0.067,},
    'Strawberry': {'C': 58.8, 'B9': 24.0, 'B3': 0.386, 'B5': 0.125, 'K': 2.2,},
    'Blueberry': {'C': 9.7, 'K': 19.3, 'B6': 0.052, 'B3': 0.418, 'B5': 0.124,},
    'Raspberry': {'C': 26.2, 'K': 7.8, 'B3': 0.598, 'B5': 0.329, 'B6': 0.055,},
    'Watermelon': {'C': 8.1, 'A': 569.0, 'B1': 0.034, 'B5': 0.221, 'B6': 0.045,},
    'Lychee': {'C': 71.5, 'B6': 0.1, 'B3': 0.603, 'B5': 0.245, 'B2': 0.065,},
    'Grape': {'C': 3.2, 'K': 14.6, 'B1': 0.069, 'B6': 0.086, 'B2': 0.07,},
    'Fig': {'C': 2.0, 'K': 4.7, 'B6': 0.113, 'B5': 0.3, 'B3': 0.4,},
    'Cherry': {'C': 7.0, 'B5': 0.199, 'B6':0.049, 'K': 2.1, 'B3': 0.154,},
    'Tomato': {'C': 13.7, 'K': 7.9, 'B3': 0.594, 'B5': 0.089, 'B6': 0.08,},
    'Cucumber': {'C': 2.8, 'K': 16.4, 'B5': 0.259, 'B6': 0.04, 'B1': 0.027,},
    'Cabbage': {'C': 36.6, 'K': 76.0, 'B6': 0.124, 'B5': 0.212, 'B3': 0.234,},
    'Carrot': {'C': 5.9, 'K': 13.2, 'B3': 0.983, 'B5': 0.273, 'B6': 0.138,},
    'Broccoli': {'C': 89.2, 'K': 101.6, 'B5': 0.573, 'B3': 0.639, 'B6': 0.175,},
    'Red bell pepper': {'C': 127.7, 'B6': 0.291, 'B9': 46.0, 'B3': 0.979, 'K': 4.9,},
    'Radish': {'C': 14.8, 'B6': 0.071, 'B3': 0.254, 'B5': 0.165, 'K': 1.3,},
    'Onion': {'C': 7.4, 'B6': 0.12, 'B5': 0.123, 'B3': 0.116, 'K': 0.8,},
    'Potato': {'C': 19.7, 'B6': 0.298, 'B5': 0.295, 'B3': 1.061, 'K': 2.2,},
    'Pumpkin': {'C': 9.0, 'K': 1.1, 'B5': 0.298, 'B3': 0.6, 'B6': 0.061,},
    'Garlic': {'C': 31.2, 'B6': 1.235, 'B5': 0.596, 'B3': 0.7, 'K': 1.7,},
  };
  static const Map<String, List<String>> foodBasicComposition = {
    'Apple': ['Calories: 52 kcal', 'Water: 86%', 'Protein: 0.3 g', 'Fat: 0.2 g', 'Carbohydrates: 13.8 g', 'Sugars: 10.4 g', 'Fiber: 2.4 g', 'Ash: 0.2 g'],
    'Banana': ['Calories: 89 kcal', 'Water: 74%', 'Protein: 1.1 g', 'Fat: 0.3 g', 'Carbohydrates: 22.8 g', 'Sugars: 12.2 g', 'Fiber: 2.6 g', 'Starch: 5.4 g'],
    'Orange': ['Calories: 47 kcal', 'Water: 86%', 'Protein: 0.9 g', 'Fat: 0.1 g', 'Carbohydrates: 11.8 g', 'Sugars: 9.4 g', 'Fiber: 2.4 g', 'Ash: 0.4 g'],
    'Lemon': ['Calories: 29 kcal', 'Water: 89%', 'Protein: 1.1 g', 'Fat: 0.3 g', 'Carbohydrates: 9.3 g', 'Sugars: 2.5 g', 'Fiber: 2.8 g', 'Ash: 0.5 g'],
    'Mango': ['Calories: 60 kcal', 'Water: 83%', 'Protein: 0.8 g', 'Fat: 0.4 g', 'Carbohydrates: 14.98 g', 'Sugars: 13.7 g', 'Fiber: 1.6 g', 'Ash: 0.3 g'],
    'Pineapple': ['Calories: 50 kcal', 'Water: 86%', 'Protein: 0.5 g', 'Fat: 0.1 g', 'Carbohydrates: 13.1 g', 'Sugars: 9.9 g', 'Fiber: 1.4 g', 'Ash: 0.3 g'],
    'Peach': ['Calories: 39 kcal', 'Water: 89%', 'Protein: 0.9 g', 'Fat: 0.3 g', 'Carbohydrates: 9.5 g', 'Sugars: 8.4 g', 'Fiber: 1.5 g', 'Ash: 0.4 g'],
    'Pear': ['Calories: 57 kcal', 'Water: 84%', 'Protein: 0.4 g', 'Fat: 0.1 g', 'Carbohydrates: 15.2 g', 'Sugars: 9.8 g', 'Fiber: 3.1 g', 'Ash: 0.3 g'],
    'Grapefruit': ['Calories: 42 kcal', 'Water: 88%', 'Protein: 0.8 g', 'Fat: 0.1 g', 'Carbohydrates: 10.7 g', 'Sugars: 6.9 g', 'Fiber: 1.6 g', 'Ash: 0.2 g'],
    'Papaya': ['Calories: 43 kcal', 'Water: 88%', 'Protein: 0.5 g', 'Fat: 0.3 g', 'Carbohydrates: 10.8 g', 'Sugars: 7.8 g', 'Fiber: 1.7 g', 'Ash: 0.4 g'],
    'Kiwi': ['Calories: 61 kcal', 'Water: 83%', 'Protein: 1.1 g', 'Fat: 0.5 g', 'Carbohydrates: 14.7 g', 'Sugars: 8.9 g', 'Fiber: 3.0 g', 'Ash: 0.5 g'],
    'Pomegranate': ['Calories: 83 kcal', 'Water: 78%', 'Protein: 1.7 g', 'Fat: 1.2 g', 'Carbohydrates: 18.7 g', 'Sugars: 13.7 g', 'Fiber: 4.0 g', 'Ash: 0.5 g'],
    'Tomato': ['Calories: 18 kcal', 'Water: 95%', 'Protein: 0.9 g', 'Fat: 0.2 g', 'Carbohydrates: 3.9 g', 'Sugars: 2.6 g', 'Fiber: 1.2 g', 'Ash: 0.5 g'],
    'Cucumber': ['Calories: 15 kcal', 'Water: 96%', 'Protein: 0.7 g', 'Fat: 0.1 g', 'Carbohydrates: 3.6 g', 'Sugars: 1.7 g', 'Fiber: 0.5 g', 'Ash: 0.4 g'],
    'Cabbage': ['Calories: 25 kcal', 'Water: 92%', 'Protein: 1.3 g', 'Fat: 0.1 g', 'Carbohydrates: 5.8 g', 'Sugars: 3.2 g', 'Fiber: 2.5 g', 'Ash: 0.6 g'],
    'Carrot': ['Calories: 41 kcal', 'Water: 88%', 'Protein: 0.9 g', 'Fat: 0.2 g', 'Carbohydrates: 9.6 g', 'Sugars: 4.7 g', 'Fiber: 2.8 g', 'Ash: 0.8 g'],
    'Broccoli': ['Calories: 55 kcal', 'Water: 89%', 'Protein: 2.8 g', 'Fat: 0.4 g', 'Carbohydrates: 11.2 g', 'Sugars: 2.2 g', 'Fiber: 3.8 g', 'Ash: 0.7 g'],
    'Red bell pepper': ['Calories: 31 kcal', 'Water: 92%', 'Protein: 1.0 g', 'Fat: 0.3 g', 'Carbohydrates: 6.0 g', 'Sugars: 4.2 g', 'Fiber: 2.1 g', 'Ash: 0.4 g'],
    'Radish': ['Calories: 16 kcal', 'Water: 95%', 'Protein: 0.7 g', 'Fat: 0.1 g', 'Carbohydrates: 3.4 g', 'Sugars: 1.9 g', 'Fiber: 1.6 g', 'Ash: 0.4 g'],
    'Onion': ['Calories: 40 kcal', 'Water: 89%', 'Protein: 1.1 g', 'Fat: 0.1 g', 'Carbohydrates: 9.3 g', 'Sugars: 4.2 g', 'Fiber: 1.7 g', 'Ash: 0.6 g'],
    'Potato': ['Calories: 77 kcal', 'Water: 79%', 'Protein: 2.0 g', 'Fat: 0.1 g', 'Carbohydrates: 17.6 g', 'Sugars: 0.8 g', 'Fiber: 2.2 g', 'Starch: 15.0 g'],
    'Pumpkin': ['Calories: 26 kcal', 'Water: 92%', 'Protein: 1.0 g', 'Fat: 0.1 g', 'Carbohydrates: 6.5 g', 'Sugars: 2.8 g', 'Fiber: 0.5 g', 'Ash: 0.6 g'],
    'Garlic': ['Calories: 149 kcal', 'Water: 58%', 'Protein: 6.4 g', 'Fat: 0.5 g', 'Carbohydrates: 33.1 g', 'Sugars: 1.0 g', 'Fiber: 2.1 g', 'Ash: 1.5 g'],
    'Strawberry': ['Calories: 32 kcal', 'Water: 91%', 'Protein: 0.7 g', 'Fat: 0.3 g', 'Carbohydrates: 7.7 g', 'Sugars: 4.9 g', 'Fiber: 2.0 g', 'Ash: 0.3 g'],
    'Blueberry': ['Calories: 57 kcal', 'Water: 84%', 'Protein: 0.7 g', 'Fat: 0.3 g', 'Carbohydrates: 14.5 g', 'Sugars: 9.7 g', 'Fiber: 2.4 g', 'Ash: 0.2 g'],
    'Raspberry': ['Calories: 52 kcal', 'Water: 86%', 'Protein: 1.5 g', 'Fat: 0.7 g', 'Carbohydrates: 11.9 g', 'Sugars: 4.4 g', 'Fiber: 6.5 g', 'Ash: 0.5 g'],
    'Watermelon': ['Calories: 30 kcal', 'Water: 92%', 'Protein: 0.6 g', 'Fat: 0.2 g', 'Carbohydrates: 7.6 g', 'Sugars: 6.2 g', 'Fiber: 0.4 g', 'Ash: 0.2 g'],
    'Lychee': ['Calories: 66 kcal', 'Water: 81%', 'Protein: 0.8 g', 'Fat: 0.4 g', 'Carbohydrates: 16.5 g', 'Sugars: 9.2 g', 'Fiber: 1.3 g', 'Ash: 0.3 g'],
    'Grape': ['Calories: 69 kcal', 'Water: 81%', 'Protein: 0.7 g', 'Fat: 0.2 g', 'Carbohydrates: 18.1 g', 'Sugars: 15.5 g', 'Fiber: 0.9 g', 'Ash: 0.3 g'],
    'Fig': ['Calories: 74 kcal', 'Water: 79%', 'Protein: 0.8 g', 'Fat: 0.4 g', 'Carbohydrates: 19.2 g', 'Sugars: 16.3 g', 'Fiber: 2.4 g', 'Ash: 0.4 g'],
    'Cherry': ['Calories: 50 kcal', 'Water: 82%', 'Protein: 1.0 g', 'Fat: 0.3 g', 'Carbohydrates: 12.0 g', 'Sugars: 8.0 g', 'Fiber: 1.6 g', 'Ash: 0.3 g'],
  };
  static const Map<String, List<String>> foodVitamins = {
    "Apple": ["Vitamin A: 54 IU (1%)", "Vitamin C: 4.6 mg (5%)", "Vitamin E: 0.18 mg (1%)", "Vitamin K: 2.2 mcg (2%)", "Vitamin B1 (Thiamine): 0.03 mg (3%)", "Vitamin B2 (Riboflavin): 0.04 mg (3%)", "Vitamin B3 (Niacin): 0.1 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.03 mg (3%)", "Vitamin B9 (Folate): 3 mcg (1%)", "Vitamin C: 4.6 mg (5%)", "Beta-Carotene: 23 mcg (0%)"],
    "Banana": ["Vitamin A: 64 IU (1%)", "Vitamin C: 8.7 mg (10%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 0.5 mcg (1%)", "Vitamin B1 (Thiamine): 0.031 mg (3%)", "Vitamin B2 (Riboflavin): 0.073 mg (5%)", "Vitamin B3 (Niacin): 0.7 mg (5%)", "Vitamin B5 (Pantothenic acid): 0.3 mg (6%)", "Vitamin B6 (Pyridoxine): 0.4 mg (20%)", "Vitamin B9 (Folate): 23 mcg (6%)", "Vitamin C: 8.7 mg (10%)", "Beta-Carotene: 0 mcg (0%)"],
    "Orange": ["Vitamin A: 225 IU (5%)", "Vitamin C: 53.2 mg (59%)", "Vitamin E: 0.18 mg (1%)", "Vitamin K: 0 mcg (0%)", "Vitamin B1 (Thiamine): 0.087 mg (7%)", "Vitamin B2 (Riboflavin): 0.04 mg (3%)", "Vitamin B3 (Niacin): 0.4 mg (3%)", "Vitamin B5 (Pantothenic acid): 0.3 mg (6%)", "Vitamin B6 (Pyridoxine): 0.06 mg (5%)", "Vitamin B9 (Folate): 30 mcg (8%)", "Vitamin C: 53.2 mg (59%)", "Beta-Carotene: 60 mcg (1%)"],
    "Lemon": ["Vitamin A: 22 IU (1%)", "Vitamin C: 53 mg (59%)", "Vitamin E: 0.15 mg (1%)", "Vitamin K: 0 mcg (0%)", "Vitamin B1 (Thiamine): 0.04 mg (3%)", "Vitamin B2 (Riboflavin): 0.02 mg (2%)", "Vitamin B3 (Niacin): 0.1 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.2 mg (4%)", "Vitamin B6 (Pyridoxine): 0.08 mg (6%)", "Vitamin B9 (Folate): 11 mcg (3%)", "Vitamin C: 53 mg (59%)", "Beta-Carotene: 1 mcg (0%)"],
    "Mango": ["Vitamin A: 54 mcg (6%)", "Vitamin C: 36.4 mg (40%)", "Vitamin E: 0.9 mg (6%)", "Vitamin K: 3.3 mcg (3%)", "Vitamin B1 (Thiamine): 0.05 mg (4%)", "Vitamin B2 (Riboflavin): 0.06 mg (5%)", "Vitamin B3 (Niacin): 1.0 mg (6%)", "Vitamin B5 (Pantothenic acid): 0.3 mg (6%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 43 mcg (11%)", "Vitamin C: 36.4 mg (40%)", "Beta-Carotene: 0 mcg (0%)"],
    "Pineapple": ["Vitamin A: 58 IU (1%)", "Vitamin C: 47.8 mg (53%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 0 mcg (0%)", "Vitamin B1 (Thiamine): 0.08 mg (7%)", "Vitamin B2 (Riboflavin): 0.03 mg (2%)", "Vitamin B3 (Niacin): 0.5 mg (3%)", "Vitamin B5 (Pantothenic acid): 0.2 mg (4%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 18 mcg (5%)", "Vitamin C: 47.8 mg (53%)", "Beta-Carotene: 0 mcg (0%)"],
    "Peach": ["Vitamin A: 326 IU (7%)", "Vitamin C: 6.6 mg (7%)", "Vitamin E: 0.8 mg (5%)", "Vitamin K: 3.6 mcg (3%)", "Vitamin B1 (Thiamine): 0.02 mg (2%)", "Vitamin B2 (Riboflavin): 0.03 mg (3%)", "Vitamin B3 (Niacin): 0.8 mg (5%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.03 mg (2%)", "Vitamin B9 (Folate): 4 mcg (1%)", "Vitamin C: 6.6 mg (7%)", "Beta-Carotene: 0 mcg (0%)"],
    "Pear": ["Vitamin A: 25 IU (1%)", "Vitamin C: 4.3 mg (5%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 3 mcg (3%)", "Vitamin B1 (Thiamine): 0.02 mg (2%)", "Vitamin B2 (Riboflavin): 0.04 mg (3%)", "Vitamin B3 (Niacin): 0.2 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.05 mg (4%)", "Vitamin B9 (Folate): 6 mcg (2%)", "Vitamin C: 4.3 mg (5%)", "Beta-Carotene: 0 mcg (0%)"],
    "Grapefruit": ["Vitamin A: 135 IU (3%)", "Vitamin C: 31.2 mg (35%)", "Vitamin E: 0.2 mg (1%)", "Vitamin K: 0 mcg (0%)", "Vitamin B1 (Thiamine): 0.05 mg (4%)", "Vitamin B2 (Riboflavin): 0.04 mg (3%)", "Vitamin B3 (Niacin): 0.3 mg (2%)", "Vitamin B5 (Pantothenic acid): 0.2 mg (4%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 19 mcg (5%)", "Vitamin C: 31.2 mg (35%)", "Beta-Carotene: 56 mcg (1%)"],
    "Papaya": ["Vitamin A: 950 IU (19%)", "Vitamin C: 60.9 mg (68%)", "Vitamin E: 0.3 mg (2%)", "Vitamin K: 2.6 mcg (2%)", "Vitamin B1 (Thiamine): 0.03 mg (3%)", "Vitamin B2 (Riboflavin): 0.03 mg (2%)", "Vitamin B3 (Niacin): 0.5 mg (3%)", "Vitamin B5 (Pantothenic acid): 0.2 mg (4%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 37 mcg (9%)", "Vitamin C: 60.9 mg (68%)", "Beta-Carotene: 0 mcg (0%)"],
    "Kiwi": ["Vitamin A: 87 IU (2%)", "Vitamin C: 92.7 mg (103%)", "Vitamin E: 1.5 mg (10%)", "Vitamin K: 40 mcg (33%)", "Vitamin B1 (Thiamine): 0.02 mg (2%)", "Vitamin B2 (Riboflavin): 0.03 mg (2%)", "Vitamin B3 (Niacin): 0.6 mg (4%)", "Vitamin B5 (Pantothenic acid): 0.2 mg (4%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 25 mcg (6%)", "Vitamin C: 92.7 mg (103%)", "Beta-Carotene: 0 mcg (0%)"],
    "Pomegranate": ["Vitamin A: 0 IU (0%)", "Vitamin C: 10.2 mg (11%)", "Vitamin E: 0.6 mg (4%)", "Vitamin K: 0 mcg (0%)", "Vitamin B1 (Thiamine): 0.05 mg (4%)", "Vitamin B2 (Riboflavin): 0.05 mg (4%)", "Vitamin B3 (Niacin): 0.2 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 38 mcg (10%)", "Vitamin C: 10.2 mg (11%)", "Beta-Carotene: 0 mcg (0%)"],
    "Strawberry": ["Vitamin A: 12 IU (0%)", "Vitamin C: 58.8 mg (65%)", "Vitamin E: 0.4 mg (3%)", "Vitamin K: 3 mcg (3%)", "Vitamin B1 (Thiamine): 0.02 mg (2%)", "Vitamin B2 (Riboflavin): 0.02 mg (2%)", "Vitamin B3 (Niacin): 0.5 mg (3%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 24 mcg (6%)", "Vitamin C: 58.8 mg (65%)", "Beta-Carotene: 0 mcg (0%)"],
    "Blueberry": ["Vitamin A: 54 IU (1%)", "Vitamin C: 9.7 mg (11%)", "Vitamin E: 0.6 mg (4%)", "Vitamin K: 28.6 mcg (24%)", "Vitamin B1 (Thiamine): 0.02 mg (2%)", "Vitamin B2 (Riboflavin): 0.03 mg (2%)", "Vitamin B3 (Niacin): 0.4 mg (3%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 6 mcg (2%)", "Vitamin C: 9.7 mg (11%)", "Beta-Carotene: 0 mcg (0%)"],
    "Raspberry": ["Vitamin A: 0 IU (0%)", "Vitamin C: 26.2 mg (29%)", "Vitamin E: 0.9 mg (6%)", "Vitamin K: 7.8 mcg (7%)", "Vitamin B1 (Thiamine): 0.03 mg (3%)", "Vitamin B2 (Riboflavin): 0.03 mg (2%)", "Vitamin B3 (Niacin): 0.5 mg (3%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 25 mcg (6%)", "Vitamin C: 26.2 mg (29%)", "Beta-Carotene: 0 mcg (0%)"],
    "Watermelon": ["Vitamin A: 569 IU (11%)", "Vitamin C: 8.1 mg (9%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 0 mcg (0%)", "Vitamin B1 (Thiamine): 0.07 mg (6%)", "Vitamin B2 (Riboflavin): 0.02 mg (2%)", "Vitamin B3 (Niacin): 0.2 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.2 mg (4%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 3 mcg (1%)", "Vitamin C: 8.1 mg (9%)", "Beta-Carotene: 0 mcg (0%)"],
    "Lychee": ["Vitamin A: 5 IU (0%)", "Vitamin C: 71.5 mg (80%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 0 mcg (0%)", "Vitamin B1 (Thiamine): 0.02 mg (2%)", "Vitamin B2 (Riboflavin): 0.05 mg (4%)", "Vitamin B3 (Niacin): 0.6 mg (4%)", "Vitamin B5 (Pantothenic acid): 0.2 mg (4%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 0 mcg (0%)", "Vitamin C: 71.5 mg (80%)", "Beta-Carotene: 0 mcg (0%)"],
    "Grape": ["Vitamin A: 66 IU (1%)", "Vitamin C: 10.8 mg (12%)", "Vitamin E: 0.2 mg (1%)", "Vitamin K: 14.6 mcg (12%)", "Vitamin B1 (Thiamine): 0.07 mg (6%)", "Vitamin B2 (Riboflavin): 0.07 mg (5%)", "Vitamin B3 (Niacin): 0.2 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 2 mcg (1%)", "Vitamin C: 10.8 mg (12%)", "Beta-Carotene: 0 mcg (0%)"],
    "Fig": ["Vitamin A: 142 IU (3%)", "Vitamin C: 1.4 mg (2%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 3 mcg (3%)", "Vitamin B1 (Thiamine): 0.03 mg (3%)", "Vitamin B2 (Riboflavin): 0.04 mg (3%)", "Vitamin B3 (Niacin): 0.2 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 3 mcg (1%)", "Vitamin C: 1.4 mg (2%)", "Beta-Carotene: 0 mcg (0%)"],
    "Cherry": ["Vitamin A: 82 IU (2%)", "Vitamin C: 7 mg (8%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 2.1 mcg (2%)", "Vitamin B1 (Thiamine): 0.03 mg (3%)", "Vitamin B2 (Riboflavin): 0.03 mg (2%)", "Vitamin B3 (Niacin): 0.3 mg (2%)", "Vitamin B5 (Pantothenic acid): 0.2 mg (4%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 3 mcg (1%)", "Vitamin C: 7 mg (8%)", "Beta-Carotene: 0 mcg (0%)"],
    "Tomato": ["Vitamin A: 833 IU (17%)", "Vitamin C: 13.7 mg (15%)", "Vitamin E: 0.54 mg (4%)", "Vitamin K: 7.9 mcg (7%)", "Vitamin B1 (Thiamine): 0.04 mg (3%)", "Vitamin B2 (Riboflavin): 0.02 mg (2%)", "Vitamin B3 (Niacin): 0.6 mg (4%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 15 mcg (4%)", "Vitamin C: 13.7 mg (15%)", "Beta-Carotene: 0 mcg (0%)"],
    "Cucumber": ["Vitamin A: 105 IU (2%)", "Vitamin C: 2.8 mg (3%)", "Vitamin E: 0.03 mg (0%)", "Vitamin K: 16.4 mcg (14%)", "Vitamin B1 (Thiamine): 0.03 mg (2%)", "Vitamin B2 (Riboflavin): 0.03 mg (2%)", "Vitamin B3 (Niacin): 0.1 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.04 mg (3%)", "Vitamin B9 (Folate): 3 mcg (1%)", "Vitamin C: 2.8 mg (3%)", "Beta-Carotene: 0 mcg (0%)"],
    "Cabbage": ["Vitamin A: 98 IU (2%)", "Vitamin C: 36.6 mg (41%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 76 mcg (63%)", "Vitamin B1 (Thiamine): 0.08 mg (7%)", "Vitamin B2 (Riboflavin): 0.05 mg (4%)", "Vitamin B3 (Niacin): 0.2 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.2 mg (4%)", "Vitamin B6 (Pyridoxine): 0.2 mg (15%)", "Vitamin B9 (Folate): 53 mcg (13%)", "Vitamin C: 36.6 mg (41%)", "Beta-Carotene: 15 mcg (0%)"],
    "Carrot": ["Vitamin A: 835 mcg (93%)", "Vitamin C: 7.6 mg (8%)", "Vitamin E: 0.6 mg (4%)", "Vitamin K: 13.2 mcg (11%)", "Vitamin B1 (Thiamine): 0.05 mg (4%)", "Vitamin B2 (Riboflavin): 0.03 mg (2%)", "Vitamin B3 (Niacin): 0.9 mg (6%)", "Vitamin B5 (Pantothenic acid): 0.3 mg (6%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 19 mcg (5%)", "Vitamin C: 7.6 mg (8%)", "Beta-Carotene: 8285 mcg (100%)"],
    "Broccoli": ["Vitamin A: 567 IU (11%)", "Vitamin C: 89.2 mg (99%)", "Vitamin E: 0.8 mg (5%)", "Vitamin K: 116 mcg (97%)", "Vitamin B1 (Thiamine): 0.07 mg (6%)", "Vitamin B2 (Riboflavin): 0.1 mg (8%)", "Vitamin B3 (Niacin): 1.1 mg (7%)", "Vitamin B5 (Pantothenic acid): 0.5 mg (10%)", "Vitamin B6 (Pyridoxine): 0.2 mg (15%)", "Vitamin B9 (Folate): 63 mcg (16%)", "Vitamin C: 89.2 mg (99%)", "Beta-Carotene: 600 mcg (10%)"],
    "Red bell pepper": ["Vitamin A: 3131 IU (63%)", "Vitamin C: 127.7 mg (142%)", "Vitamin E: 1.6 mg (11%)", "Vitamin K: 9.9 mcg (8%)", "Vitamin B1 (Thiamine): 0.1 mg (7%)", "Vitamin B2 (Riboflavin): 0.1 mg (6%)", "Vitamin B3 (Niacin): 1.5 mg (9%)", "Vitamin B5 (Pantothenic acid): 0.5 mg (10%)", "Vitamin B6 (Pyridoxine): 0.5 mg (38%)", "Vitamin B9 (Folate): 46 mcg (12%)", "Vitamin C: 127.7 mg (142%)", "Beta-Carotene: 1562 mcg (26%)"],
    "Radish": ["Vitamin A: 0 IU (0%)", "Vitamin C: 17.2 mg (19%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 0.3 mcg (0%)", "Vitamin B1 (Thiamine): 0.04 mg (3%)", "Vitamin B2 (Riboflavin): 0.02 mg (2%)", "Vitamin B3 (Niacin): 0.2 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.2 mg (4%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 25 mcg (6%)", "Vitamin C: 17.2 mg (19%)", "Beta-Carotene: 0 mcg (0%)"],
    "Onion": ["Vitamin A: 0 IU (0%)", "Vitamin C: 8.1 mg (9%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 0.1 mcg (0%)", "Vitamin B1 (Thiamine): 0.1 mg (8%)", "Vitamin B2 (Riboflavin): 0.03 mg (2%)", "Vitamin B3 (Niacin): 0.2 mg (1%)", "Vitamin B5 (Pantothenic acid): 0.1 mg (2%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 19 mcg (5%)", "Vitamin C: 8.1 mg (9%)", "Beta-Carotene: 0 mcg (0%)"],
    "Potato": ["Vitamin A: 0 IU (0%)", "Vitamin C: 19.7 mg (22%)", "Vitamin E: 0.1 mg (1%)", "Vitamin K: 2.1 mcg (2%)", "Vitamin B1 (Thiamine): 0.1 mg (7%)", "Vitamin B2 (Riboflavin): 0.02 mg (2%)", "Vitamin B3 (Niacin): 1.1 mg (7%)", "Vitamin B5 (Pantothenic acid): 0.3 mg (6%)", "Vitamin B6 (Pyridoxine): 0.3 mg (20%)", "Vitamin B9 (Folate): 38 mcg (10%)", "Vitamin C: 19.7 mg (22%)", "Beta-Carotene: 0 mcg (0%)"],
    "Pumpkin": ["Vitamin A: 7384 IU (148%)", "Vitamin C: 11.9 mg (13%)", "Vitamin E: 1.1 mg (7%)", "Vitamin K: 3.3 mcg (3%)", "Vitamin B1 (Thiamine): 0.05 mg (4%)", "Vitamin B2 (Riboflavin): 0.1 mg (6%)", "Vitamin B3 (Niacin): 1.0 mg (6%)", "Vitamin B5 (Pantothenic acid): 0.4 mg (8%)", "Vitamin B6 (Pyridoxine): 0.1 mg (8%)", "Vitamin B9 (Folate): 16 mcg (4%)", "Vitamin C: 11.9 mg (13%)", "Beta-Carotene: 8500 mcg (100%)"],
    "Garlic": ["Vitamin A: 0 IU (0%)", "Vitamin C: 31.2 mg (35%)", "Vitamin E: 0.2 mg (1%)", "Vitamin K: 1.7 mcg (1%)", "Vitamin B1 (Thiamine): 0.2 mg (12%)", "Vitamin B2 (Riboflavin): 0.1 mg (6%)", "Vitamin B3 (Niacin): 0.7 mg (4%)", "Vitamin B5 (Pantothenic acid): 0.6 mg (12%)", "Vitamin B6 (Pyridoxine): 1.2 mg (93%)", "Vitamin B9 (Folate): 3 mcg (1%)", "Vitamin C: 31.2 mg (35%)", "Beta-Carotene: 0 mcg (0%)"]
  };
  static const foodMinerals = {
    "Apple": ["Calcium: 6.0 mg (0.6%)", "Iron: 0.1 mg (1%)", "Magnesium: 5.0 mg (1%)", "Phosphorus: 11.0 mg (2%)", "Potassium: 107.0 mg (2%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.04 mg (1%)", "Copper: 0.03 mg (3%)", "Manganese: 0.03 mg (2%)"],
    "Banana": ["Calcium: 5.0 mg (0.5%)", "Iron: 0.3 mg (2%)", "Magnesium: 27.0 mg (6%)", "Phosphorus: 22.0 mg (3%)", "Potassium: 358.0 mg (8%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (11%)", "Manganese: 0.3 mg (14%)"],
    "Orange": ["Calcium: 40.0 mg (4%)", "Iron: 0.1 mg (1%)", "Magnesium: 10.0 mg (2%)", "Phosphorus: 14.0 mg (2%)", "Potassium: 181.0 mg (4%)", "Sodium: 0.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (11%)", "Manganese: 0.0 mg (2%)"],
    "Lemon": ["Calcium: 26.0 mg (3%)", "Iron: 0.1 mg (1%)", "Magnesium: 8.0 mg (2%)", "Phosphorus: 12.0 mg (2%)", "Potassium: 138.0 mg (3%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.05 mg (1%)", "Copper: 0.04 mg (4%)", "Manganese: 0.0 mg (2%)"],
    "Mango": ["Calcium: 11.0 mg (1%)", "Iron: 0.2 mg (1%)", "Magnesium: 19.0 mg (4%)", "Phosphorus: 14.0 mg (2%)", "Potassium: 168.0 mg (4%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (11%)", "Manganese: 0.1 mg (5%)"],
    "Pineapple": ["Calcium: 13.0 mg (1%)", "Iron: 0.3 mg (2%)", "Magnesium: 12.0 mg (3%)", "Phosphorus: 8.0 mg (1%)", "Potassium: 109.0 mg (2%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.9 mg (45%)"],
    "Peach": ["Calcium: 6.0 mg (0.6%)", "Iron: 0.2 mg (1%)", "Magnesium: 9.0 mg (2%)", "Phosphorus: 12.0 mg (2%)", "Potassium: 190.0 mg (4%)", "Sodium: 0.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (9%)", "Manganese: 0.0 mg (2%)"],
    "Pear": ["Calcium: 9.0 mg (1%)", "Iron: 0.2 mg (1%)", "Magnesium: 7.0 mg (2%)", "Phosphorus: 10.0 mg (1%)", "Potassium: 116.0 mg (2%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.0 mg (2%)"],
    "Grapefruit": ["Calcium: 22.0 mg (2%)", "Iron: 0.1 mg (1%)", "Magnesium: 8.0 mg (2%)", "Phosphorus: 13.0 mg (2%)", "Potassium: 135.0 mg (3%)", "Sodium: 0.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.05 mg (5%)", "Manganese: 0.03 mg (2%)"],
    "Papaya": ["Calcium: 20.0 mg (2%)", "Iron: 0.3 mg (2%)", "Magnesium: 21.0 mg (5%)", "Phosphorus: 10.0 mg (2%)", "Potassium: 182.0 mg (4%)", "Sodium: 3.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.1 mg (5%)"],
    "Kiwi": ["Calcium: 34.0 mg (3%)", "Iron: 0.3 mg (2%)", "Magnesium: 17.0 mg (4%)", "Phosphorus: 34.0 mg (5%)", "Potassium: 312.0 mg (7%)", "Sodium: 3.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.1 mg (7%)"],
    "Pomegranate": ["Calcium: 10.0 mg (1%)", "Iron: 0.3 mg (2%)", "Magnesium: 12.0 mg (3%)", "Phosphorus: 12.0 mg (2%)", "Potassium: 236.0 mg (5%)", "Sodium: 3.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.1 mg (7%)"],
    "Strawberry": ["Calcium: 16.0 mg (1%)", "Iron: 0.5 mg (3%)", "Magnesium: 13.0 mg (3%)", "Phosphorus: 24.0 mg (3%)", "Potassium: 153.0 mg (3%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (11%)", "Manganese: 0.3 mg (14%)"],
    "Blueberry": ["Calcium: 6.0 mg (0.6%)", "Iron: 0.4 mg (2%)", "Magnesium: 6.0 mg (1%)", "Phosphorus: 12.0 mg (2%)", "Potassium: 77.0 mg (2%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.3 mg (15%)"],
    "Raspberry": ["Calcium: 25.0 mg (2%)", "Iron: 0.7 mg (4%)", "Magnesium: 22.0 mg (5%)", "Phosphorus: 27.0 mg (4%)", "Potassium: 151.0 mg (3%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.4 mg (4%)", "Copper: 0.1 mg (11%)", "Manganese: 0.4 mg (18%)"],
    "Watermelon": ["Calcium: 10.0 mg (1%)", "Iron: 0.2 mg (1%)", "Magnesium: 10.0 mg (2%)", "Phosphorus: 11.0 mg (2%)", "Potassium: 112.0 mg (2%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.0 mg (2%)"],
    "Lychee": ["Calcium: 5.0 mg (0.5%)", "Iron: 0.1 mg (1%)", "Magnesium: 10.0 mg (2%)", "Phosphorus: 12.0 mg (2%)", "Potassium: 171.0 mg (4%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.1 mg (5%)"],
    "Grape": ["Calcium: 10.0 mg (1%)", "Iron: 0.4 mg (2%)", "Magnesium: 7.0 mg (2%)", "Phosphorus: 10.0 mg (1%)", "Potassium: 191.0 mg (4%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (11%)", "Manganese: 0.1 mg (5%)"],
    "Fig": ["Calcium: 18.0 mg (2%)", "Iron: 0.2 mg (1%)", "Magnesium: 17.0 mg (4%)", "Phosphorus: 14.0 mg (2%)", "Potassium: 232.0 mg (5%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.1 mg (5%)"],
    "Cherry": ["Calcium: 13.0 mg (1%)", "Iron: 0.3 mg (2%)", "Magnesium: 10.0 mg (2%)", "Phosphorus: 16.0 mg (2%)", "Potassium: 173.0 mg (4%)", "Sodium: 0.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.1 mg (5%)"],
    "Tomato": ["Calcium: 18.0 mg (2%)", "Iron: 0.5 mg (3%)", "Magnesium: 11.0 mg (3%)", "Phosphorus: 15.0 mg (2%)", "Potassium: 237.0 mg (5%)", "Sodium: 5.0 mg (0%)", "Zinc: 0.2 mg (2%)", "Copper: 0.1 mg (10%)", "Manganese: 0.1 mg (5%)"],
    "Cucumber": ["Calcium: 16.0 mg (1%)", "Iron: 0.3 mg (2%)", "Magnesium: 13.0 mg (3%)", "Phosphorus: 24.0 mg (3%)", "Potassium: 147.0 mg (3%)", "Sodium: 2.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (11%)", "Manganese: 0.1 mg (5%)"],
    "Cabbage": ["Calcium: 40.0 mg (4%)", "Iron: 0.5 mg (3%)", "Magnesium: 12.0 mg (3%)", "Phosphorus: 10.0 mg (2%)", "Potassium: 170.0 mg (4%)", "Sodium: 18.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (11%)", "Manganese: 0.2 mg (10%)"],
    "Carrot": ["Calcium: 33.0 mg (3%)", "Iron: 0.6 mg (3%)", "Magnesium: 12.0 mg (3%)", "Phosphorus: 35.0 mg (5%)", "Potassium: 320.0 mg (7%)", "Sodium: 69.0 mg (1%)", "Zinc: 0.2 mg (2%)", "Copper: 0.1 mg (11%)", "Manganese: 0.1 mg (5%)"],
    "Broccoli": ["Calcium: 47.0 mg (5%)", "Iron: 0.7 mg (4%)", "Magnesium: 21.0 mg (5%)", "Phosphorus: 66.0 mg (9%)", "Potassium: 316.0 mg (7%)", "Sodium: 33.0 mg (1%)", "Zinc: 0.3 mg (3%)", "Copper: 0.1 mg (10%)", "Manganese: 0.2 mg (10%)"],
    "Red Bell Pepper": ["Calcium: 7.0 mg (1%)", "Iron: 0.4 mg (2%)", "Magnesium: 10.0 mg (2%)", "Phosphorus: 28.0 mg (4%)", "Potassium: 157.0 mg (3%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (9%)", "Manganese: 0.1 mg (5%)"],
    "Radish": ["Calcium: 25.0 mg (2%)", "Iron: 0.3 mg (2%)", "Magnesium: 10.0 mg (2%)", "Phosphorus: 10.0 mg (1%)", "Potassium: 233.0 mg (5%)", "Sodium: 39.0 mg (1%)", "Zinc: 0.1 mg (1%)", "Copper: 0.1 mg (10%)", "Manganese: 0.1 mg (4%)"],
    "Onion": ["Calcium: 23.0 mg (2%)", "Iron: 0.2 mg (1%)", "Magnesium: 10.0 mg (2%)", "Phosphorus: 29.0 mg (4%)", "Potassium: 146.0 mg (3%)", "Sodium: 4.0 mg (0%)", "Zinc: 0.2 mg (2%)", "Copper: 0.1 mg (9%)", "Manganese: 0.1 mg (6%)"],
    "Potato": ["Calcium: 11.0 mg (1%)", "Iron: 0.8 mg (4%)", "Magnesium: 23.0 mg (5%)", "Phosphorus: 57.0 mg (8%)", "Potassium: 429.0 mg (9%)", "Sodium: 10.0 mg (0%)", "Zinc: 0.3 mg (3%)", "Copper: 0.1 mg (11%)", "Manganese: 0.2 mg (10%)"],
    "Pumpkin": ["Calcium: 21.0 mg (2%)", "Iron: 0.8 mg (4%)", "Magnesium: 12.0 mg (3%)", "Phosphorus: 44.0 mg (6%)", "Potassium: 340.0 mg (7%)", "Sodium: 1.0 mg (0%)", "Zinc: 0.3 mg (3%)", "Copper: 0.1 mg (10%)", "Manganese: 0.1 mg (5%)"],
    "Garlic": ["Calcium: 181.0 mg (18%)", "Iron: 1.7 mg (9%)", "Magnesium: 25.0 mg (6%)", "Phosphorus: 153.0 mg (22%)", "Potassium: 401.0 mg (9%)", "Sodium: 17.0 mg (1%)", "Zinc: 0.5 mg (5%)", "Copper: 0.1 mg (11%)", "Manganese: 0.1 mg (7%)"]
  };
  static const Map<String, Map<String, double>> foodNutrition = {
    "Apple": {"kcal": 52.0, "protein": 0.3, "carbs": 13.8, "fat": 0.2},
    "Banana": {"kcal": 89.0, "protein": 1.1, "carbs": 22.8, "fat": 0.3},
    "Orange": {"kcal": 47.0, "protein": 0.9, "carbs": 11.8, "fat": 0.1},
    "Lemon": {"kcal": 29.0, "protein": 1.1, "carbs": 9.3, "fat": 0.3},
    "Mango": {"kcal": 60.0, "protein": 0.8, "carbs": 15.0, "fat": 0.4},
    "Pineapple": {"kcal": 50.0, "protein": 0.5, "carbs": 13.1, "fat": 0.1},
    "Peach": {"kcal": 39.0, "protein": 0.9, "carbs": 9.5, "fat": 0.3},
    "Pear": {"kcal": 57.0, "protein": 0.4, "carbs": 15.2, "fat": 0.1},
    "Grapefruit": {"kcal": 42.0, "protein": 0.8, "carbs": 8.5, "fat": 0.1},
    "Papaya": {"kcal": 43.0, "protein": 0.5, "carbs": 10.8, "fat": 0.2},
    "Kiwi": {"kcal": 61.0, "protein": 1.1, "carbs": 14.7, "fat": 0.5},
    "Pomegranate": {"kcal": 83.0, "protein": 1.7, "carbs": 18.7, "fat": 1.2},
    "Strawberry": {"kcal": 32.0, "protein": 0.8, "carbs": 7.7, "fat": 0.3},
    "Blueberry": {"kcal": 57.0, "protein": 0.7, "carbs": 14.5, "fat": 0.3},
    "Raspberry": {"kcal": 52.0, "protein": 1.2, "carbs": 12.0, "fat": 0.7},
    "Watermelon": {"kcal": 30.0, "protein": 0.6, "carbs": 7.6, "fat": 0.2},
    "Lychee": {"kcal": 66.0, "protein": 0.8, "carbs": 16.5, "fat": 0.4},
    "Grape": {"kcal": 69.0, "protein": 0.6, "carbs": 17.0, "fat": 0.2},
    "Fig": {"kcal": 74.0, "protein": 0.8, "carbs": 19.2, "fat": 0.3},
    "Cherry": {"kcal": 63.0, "protein": 1.1, "carbs": 16.0, "fat": 0.2},
    "Tomato": {"kcal": 18.0, "protein": 0.9, "carbs": 3.9, "fat": 0.2},
    "Cucumber": {"kcal": 15.0, "protein": 0.7, "carbs": 3.6, "fat": 0.1},
    "Cabbage": {"kcal": 25.0, "protein": 1.3, "carbs": 5.8, "fat": 0.1},
    "Carrot": {"kcal": 41.0, "protein": 0.9, "carbs": 9.6, "fat": 0.2},
    "Broccoli": {"kcal": 34.0, "protein": 2.8, "carbs": 6.6, "fat": 0.4},
    "Red bell pepper": {"kcal": 31.0, "protein": 1.0, "carbs": 6.0, "fat": 0.3},
    "Radish": {"kcal": 16.0, "protein": 0.7, "carbs": 3.4, "fat": 0.1},
    "Onion": {"kcal": 40.0, "protein": 1.1, "carbs": 9.3, "fat": 0.1},
    "Potato": {"kcal": 77.0, "protein": 2.0, "carbs": 17.0, "fat": 0.1},
    "Pumpkin": {"kcal": 26.0, "protein": 1.0, "carbs": 6.5, "fat": 0.1},
    "Garlic": {"kcal": 149.0, "protein": 6.4, "carbs": 33.1, "fat": 0.5},
  };

}