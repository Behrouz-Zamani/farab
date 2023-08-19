class HistoryModel
{
  String id;
  String sal;
  String pic;
  String detail;

    HistoryModel
    ({
 required this.id,
required this.sal,
required this.pic,
required this.detail
    });
}

List<HistoryModel> historyList=
[
HistoryModel(id: '1',sal: '1371',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/1992.jpg',detail: 'آغاز رسمی فعالیت‌های شرکت فراب'),
HistoryModel(id: '2',sal: '1372',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/1993-1.jpg',detail: 'عقد قرارداد اولین پروژه (نیروگاه آبی کارون یک به ظرفیت 1000 مگاوات)'),
HistoryModel(id: '3',sal: '1379',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2000.jpg',detail: 'مجموع قراردادهای حوزه نیروگاه آبی با عقد قرارداد پروژه نیروگاه 1000 مگاواتی توسعه مسجد سلیمان به 10.000 مگاوات رسید. تاسیس شرکت ساخت تجهیزات فراب'),
HistoryModel(id: '4',sal: '1382',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2003.jpg',detail: 'عقد قرارداد پروژه 1000 مگاواتی سیاه بیشه به عنوان اولین طرح تلمبه ذخیره‌ای کشور'),
HistoryModel(id: '5',sal: '1384',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2005.jpg',detail: 'مبادله اولین قرارداد در حوزه پروژه‌های نیروگاه حرارتی (نیروگاه 120 مگاواتی برق و بخار پتروشیمی ایلام)'),
HistoryModel(id: '6',sal: '1385',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2006.jpg',detail: '• انعقاد اولین قرارداد خارج کشور (پروژه سد و نیروگاه 220 مگاواتی سنگتوده 2 در کشور تاجیکستان)• تاسیس شرکت ناردیس طرح‌های انرژی'),
HistoryModel(id: '7',sal: '1386',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2007.jpg',detail: 'مبادله قرارداد دومین پروژه خارج کشور (پروژه نیروگاه آبی 25 مگاواتی تانا در کشور کنیا)'),
HistoryModel(id: '8',sal: '1387',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2008.jpg',detail: '• امضای قرارداد سومین پروژه خارج کشور (طرح سد، تونل و نیروگاه اومااویا در کشور سریلانکا)• تاسیس شرکت ساختمان و نصب فراب'),
HistoryModel(id: '9',sal: '1389',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2010.jpg',detail: '• انعقاد قرارداد بخش سیویل نیروگاه آبی کینداروما در کشور کنیا• طراحی توربین آبی با استفاده از تخصص داخلی برای اولین بار در ایران'),
HistoryModel(id: '10',sal: '1390',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2011.jpg',detail: '• انعقاد قرارداد اولین پروژه نیروگاه حرارتی در خارج از کشور (پروژه فاز دوم نیروگاه حرارتی 320 مگاواتی الصدر در عراق)• برنده شدن شرکت فراب در مناقصه طرح کنتورهای هوشمند در دو استان زنجان و بوشهر برای اولین بار در ایران• انعقاد اولین قرارداد حوزه ریلی (خط دوی قطار شهری مشهد)• انعقاد اولین قرارداد حوزه بهره‌برداری و نگه‌داری (نیروگاه 1000 مگاواتی گتوند علیا)'),
HistoryModel(id: '11',sal: '1391',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/%D8%B5%D9%81%D8%AD%D9%87-71.jpg',detail: '• تاسیس شرکت بهره‌برداری و نگه‌داری فراب'),
HistoryModel(id: '12',sal: '1392',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2013.jpg',detail: '• انعقاد قرارداد احداث جاده کلار به کفری در عراق'),
HistoryModel(id: '13',sal: '1393',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2014.jpg',detail: '• امضای قرارداد نیروگاه آبی 5.2 مگاواتی Terem در کشور کنیا• راه‌اندازی اولین واحد نیروگاه ۱۰ مگاواتی آزاد به عنوان اولین نیروگاه آبی با توربین و گاورنر طراحی و ساخته شده در ایران'),
HistoryModel(id: '14',sal: '1394',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/2015.jpg',detail: '• امضای قرارداد احداث سد و نیروگاه آبی 37.6 مگاواتی درالوک ۲ در کردستان عراق• انعقاد قرارداد اولین پروژه نفت، گاز و پتروشیمی (پروژه بازسازی مخزن نفت بصره در عراق)'),
HistoryModel(id: '15',sal: '1395',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/dalahoo18.jpg',detail: '• آغاز احداث اولین نیروگاه حرارتی با توربین کلاس F در فراب'),
HistoryModel(id: '16',sal: '1397',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/06/%DA%AF%D8%AA%D9%88%D9%86%D8%AF2.jpg',detail: '• آغاز فعالیت رسمی شرکت نفت و گاز فراب• امضای قرارداد نیروگاه 10 مگاواتی Yala1 در کشور کنیا'),
HistoryModel(id: '17',sal: '1398',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/1992.jpg',detail: '-تقدير از گروه فراب به عنوان پيمانكار اصلي نيروگاه آبي سردشت-افتتاح واحد نخست نيروگاه دالاهو-اهدای تندیس سیمین جایزه ملي مدیریت پروژه ایران به پروژه نیروگاه آبی داریان شرکت فراب-افتتاح ادامه مسیر خط 2 قطار شهری -افتتاح بخش شرقی و دو ایستگاه از خط ۷ مترو تهران -تقدیر معاون وزیر نیرو از نقش شرکت مولد برق یزد در عبور از پیک مصرف تابستان 1398-شرکت برتر« در پانزدهمین نمایشگاه بین المللی صنعت آب و تأسیسات آب و فاضالب ایران -افتتاح نیروگاه آبی 150 مگاواتي سردشت-افتتاح سد پوهولپوال و تونلهای انتقال آب پروژه اومااویا-کسب »مدال افتخار صادرات سال 1398 »توسط گروه فراب-افتتاح راه آهن برقی گلشهر – هشتگرد-کسب رتبه دوم شركتهاي برتر پيمانكاري و رتبه 70 در بین صد شرکت برتر ایران-اجراي خط لوله از آبشيرينكن بندرعباس تا مخازن داماهي-اخذ نيروگاه سيكل تركيبي تهران 2-نصب و راهاندازي 75000 كنتور هوشمند'),
HistoryModel(id: '18',sal: '1399',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/1992.jpg',detail: '-امضاي قرارداد اجراي مرحله دوم احداث »تونل استقالل« در تاجيكستان-افتتاح دو ايستگاه ميدان قيام و دوالب در خط 7 مترو تهران  -افتتاح فاز دوم بزرگترین پروژه آب شیرین كن كشور در بندرعباس-احداث واحد دوم بخش گاز نیروگاه سیكل تركیبی دالاهو-شركت برتر فعال در توسعه نیروگاه های برق آبی كوچك« در دومین دوره جایزه ملی انرژیهای تجدیدپذیر ايران'),
HistoryModel(id: '19',sal: '1400',pic: 'https://www.farab.com/fa/wp-content/uploads/2019/05/1992.jpg',detail: '-اتصال واحد اول بخار نیروگاه پار سجنوبی به شبكه سراسری برق كشور-سنكرون اولین واحد نیروگاه درالوك 2 به توان 18 .8 مگاوات -افتتاح ایستگاه «شهدای 17 شهریور » در خط 7 مترو تهران-تقدیر كارفرمای پروژه نیروگاه پارس جنوبی از عملكرد HSE شركت فراب و پیمانكاران زیرمجموعه-افتتاح فاز سوم و نهایی آب شیرین كن یكصد هزار متر مكعبی بندرعباس-افتتاح ایستگاه مدافعان سلامت در خط 7 مترو تهران-اخذ گواهی صلاحیت فنی و مالی معدنی از سازمان صنعت، معدن و تجارت'),
];