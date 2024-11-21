import 'package:get/get.dart';

class LocalStrings extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'ok':'ok',
          'Continue':'Continue',
          'you dont have any orders':'you dont have any orders',
          'Delete Your Account': 'Delete Your Account',
          'Delete Account': 'Delete Account',
          'to delete your account please click on the button below':
              'to delete your account please click on the button below',
          'Delete my account': 'Delete my account',
          'Are you sure you want to delete your account?':
              'Are you sure you want to delete your account?',
          'Welcome': 'Welcome',
          'Welcome to Fwo App': 'Welcome to Fwo App',
          'Login': 'Login',
          'Login to your account': 'Login to your account',
          'Get Started': 'Get Started',
          'Get started with Fwo App': 'Get started with Fwo App',
          'Skip': 'Skip',
          'Done': 'Done',
          'Continue as': 'Continue as',
          'Company': 'Company',
          'Person': 'Person',
          'Station': 'Station',
          'are you contracted with us ?': 'are you contracted with us ?',
          'Contract with us (new account)': 'Contract with us (new account)',
          'do you have an account ?': 'do you have an account ?',
          'create a new account': 'create a new account',
          'skip for now': 'skip for now',
          'continue without account': 'continue without account',
          'Email': 'Email',
          'Enter Email': 'Enter Email',
          'Password': 'Password',
          'Enter Password': 'Enter Password',
          'Don\'t have an account?': 'Don\'t have an account?',
          'Forgot Password?': 'Forgot Password?',
          'Signup': 'Signup',
          'Create an account': 'Create an account',
          'Enter Full Name': 'Enter Full Name',
          'Enter Phone': 'Enter Phone',
          'Confirm Password': 'Confirm Password',
          'Already have an account?': 'Already have an account?',
          'Orders': 'Orders',
          'Add New Order': 'Add New Order',
          'Enter Quantity': 'Enter Quantity',
          'Location Selected': 'Location Selected',
          'Select Location': 'Select Location',
          'Add': 'Add',
          'getting location...': 'getting location...',
          'Company Details': 'Company Details',
          'Contract': 'Contract',
          'Home': 'Home',
          'New Order': 'New Order',
          'Profile': 'Profile',
          'Add Suggestions Or Complaints': 'Add Suggestions Or Complaints',
          'Suggestions Or Complaints': 'Suggestions Or Complaints',
          'User not found': 'User not found',
          'Suggestions And Complaints': 'Suggestions And Complaints',
          'Please Enter Your Suggestions Or Complaints':
              'Please Enter Your Suggestions Or Complaints',
          'Password should be at least 6 characters':
              'Password should be at least 6 characters',
          'All fields are required': 'All fields are required',
          'Password does not match': 'Password does not match',
          'Please Enter Email': 'Please Enter Email',
          'Please Enter Email and Password': 'Please Enter Email and Password',
          'Request to renew the contract': 'Request to renew the contract',
          'Are you sure?, you want to renew the contract':
              'Are you sure?, you want to renew the contract',
          'Cancel': 'Cancel',
          'Yes': 'Yes',
          'No': 'No',
          'Logout': 'Logout',
          'Please fill all fields': 'Please fill all fields',
          'Please select location': 'Please select location',
          'A copy of the commercial register':
              'A copy of the commercial register',
          'A copy of the tax ID card': 'A copy of the tax ID card',
          'A copy of the contractor’s ID card':
              'A copy of the contractor’s ID card',
          'Passwords do not match': 'Passwords do not match',
          'Please upload all files': 'Please upload all files',
          'Order submitted successfully': 'Order submitted successfully',
          'Suggestion and Complaint submitted successfully':
              'Suggestion and Complaint submitted successfully',
          'Contract renewed sabmitted successfully':
              'Contract renewed sabmitted successfully',
          // FirebaseExceptionCode.accountExistsWithDifferentCredential
          "The account already exists with a different credential.":
              "The account already exists with a different credential.",
          // FirebaseExceptionCode.emailAlreadyInUse
          "The email is already in use by another account.":
              "The email is already in use by another account.",
          // FirebaseExceptionCode.invalidCredential
          "The provided credential is invalid.":
              "The provided credential is invalid.",
          // FirebaseExceptionCode.invalidEmail
          "The email address is badly formatted.":
              "The email address is badly formatted.",
          // FirebaseExceptionCode.invalidVerificationCode
          "The credential verification code is invalid.":
              "The credential verification code is invalid.",
          // FirebaseExceptionCode.invalidVerificationId
          "The credential verification ID is invalid.":
              "The credential verification ID is invalid.",
          // FirebaseExceptionCode.appNotAuthorized
          "The app is not authorized to use Firebase Authentication.":
              "The app is not authorized to use Firebase Authentication.",
          // FirebaseExceptionCode.appNotInstalled
          "The app is not installed.": "The app is not installed.",
          // FirebaseExceptionCode.argumentError
          "An error occurred in the arguments provided.":
              "An error occurred in the arguments provided.",
          // FirebaseExceptionCode.invalidApiKey
          "The API key provided is invalid.":
              "The API key provided is invalid.",
          // FirebaseExceptionCode.invalidUserToken
          "The user's credential is no longer valid.":
              "The user's credential is no longer valid.",
          // FirebaseExceptionCode.networkRequestFailed
          "A network error occurred. Please check your internet connection.":
              "A network error occurred. Please check your internet connection.",
          // FirebaseExceptionCode.noAuthEvent
          "No authentication event occurred.":
              "No authentication event occurred.",
          // FirebaseExceptionCode.operationNotAllowed
          "The specified operation is not allowed.":
              "The specified operation is not allowed.",
          // FirebaseExceptionCode.requiresRecentLogin
          "The operation requires a recent login. Please log in again.":
              "The operation requires a recent login. Please log in again.",
          // FirebaseExceptionCode.tooManyRequests
          "Too many requests. Please try again later.":
              "Too many requests. Please try again later.",
          // FirebaseExceptionCode.userDisabled
          "The user account has been disabled by an administrator.":
              "The user account has been disabled by an administrator.",
          // FirebaseExceptionCode.userNotFound
          "No user found with the provided credentials.":
              "No user found with the provided credentials.",
          // FirebaseExceptionCode.weakPassword
          "The password is not strong enough. Please choose a stronger password.":
              "The password is not strong enough. Please choose a stronger password.",
          // FirebaseExceptionCode.wrongPassword
          "The password is incorrect. Please try again.":
              "The password is incorrect. Please try again.",

          // FirebaseExceptionCode.cancelled
          "The operation was cancelled.": "The operation was cancelled.",
          // FirebaseExceptionCode.unknown
          "An unknown error occurred.": "An unknown error occurred.",
          // FirebaseExceptionCode.invalidArgument
          "An invalid argument was provided.":
              "An invalid argument was provided.",
          // FirebaseExceptionCode.deadlineExceeded
          "The operation took too long to complete.":
              "The operation took too long to complete.",
          // FirebaseExceptionCode.notFound
          "The requested document was not found.":
              "The requested document was not found.",
          // FirebaseExceptionCode.alreadyExists
          "The document already exists.": "The document already exists.",
          // FirebaseExceptionCode.permissionDenied
          "You do not have permission to perform this operation.":
              "You do not have permission to perform this operation.",
          // FirebaseExceptionCode.resourceExhausted
          "Resource limit has been exceeded.":
              "Resource limit has been exceeded.",
          // FirebaseExceptionCode.failedPrecondition
          "The operation failed due to a precondition.":
              "The operation failed due to a precondition.",
          // FirebaseExceptionCode.aborted
          "The operation was aborted.": "The operation was aborted.",
          // FirebaseExceptionCode.outOfRange
          "The operation was attempted past the valid range.":
              "The operation was attempted past the valid range.",
          // FirebaseExceptionCode.unimplemented
          "The operation is not implemented.":
              "The operation is not implemented.",
          // FirebaseExceptionCode.internal
          "An internal error occurred.": "An internal error occurred.",
          // FirebaseExceptionCode.unavailable
          "The service is currently unavailable. Please try again later.":
              "The service is currently unavailable. Please try again later.",
          // FirebaseExceptionCode.dataLoss
          "Data loss occurred.": "Data loss occurred.",
          // FirebaseExceptionCode.unauthenticated
          "You need to authenticate to perform this operation.":
              "You need to authenticate to perform this operation.",

          // FirebaseExceptionCode.objectNotFound
          "No object found at the specified reference.":
              "No object found at the specified reference.",
          // FirebaseExceptionCode.bucketNotFound
          "No bucket is configured for Firebase Storage.":
              "No bucket is configured for Firebase Storage.",
          // FirebaseExceptionCode.projectNotFound
          "No project is configured for Firebase Storage.":
              "No project is configured for Firebase Storage.",
          // FirebaseExceptionCode.quotaExceeded
          "The storage quota has been exceeded.":
              "The storage quota has been exceeded.",
          // FirebaseExceptionCode.retryLimitExceeded
          "The operation took too long to complete. Please try again.":
              "The operation took too long to complete. Please try again.",
          // FirebaseExceptionCode.invalidChecksum
          "The file checksum does not match.":
              "The file checksum does not match.",
          // FirebaseExceptionCode.invalidEventName
          "An invalid event name was provided.":
              "An invalid event name was provided.",
          // FirebaseExceptionCode.invalidUrl
          "The URL provided is invalid.": "The URL provided is invalid.",
          // FirebaseExceptionCode.transientError
          "A transient error occurred. Please try again.":
              "A transient error occurred. Please try again.",
          // FirebaseExceptionCode.serverFileWrongSize
          "The file size on the server does not match the specified size.":
              "The file size on the server does not match the specified size.",
          'Oil complex': 'Oil complex',
          'Economic company': 'Economic company',
          'Register with us': 'Register with us',
          'Register': 'Register',
          'Add Company Details (Optional)': 'Add Company Details (Optional)',
          'FullName':'FullName',
          'Phone':'Phone',
          'Quantity':'Quantity',
          'Location':'Location',
          'Date':'Date',
          

        },
        'ar_AE': {
        'you dont have any orders':'انت لا تملك اي طلبات',
          'Continue':'متابعة',

          'Delete Your Account': 'حذف حسابك',
          'Delete Account': 'حذف حسابك',
                    'ok':'حسنا',

          'to delete your account please click on the button below':
              'لحذف حسابك الخاص بك الرجاء الضغط على زر التالي',
          'Delete my account': 'حذف حسابي',
          'Are you sure you want to delete your account?':
              'هل أنت متاكد من حذف حسابك؟',
          'Welcome': 'مرحبا',
          'Welcome to Fwo App': 'مرحبا بك في تطبيق Fwo',
          'Login': 'تسجيل الدخول',
          'Login to your account': 'قم بتسجيل الدخول إلى حسابك',
          'Get Started': 'ابدأ',
          'Get started with Fwo App': 'ابدأ مع تطبيق Fwo',
          'Skip': 'تخطى',
          'Done': 'تم',
          'Continue as': 'متابعة كـ',
          'Company': 'شركة',
          'Person': 'شخص',
          'Station': 'محطة',
          'are you contracted with us ?': 'هل أنت متعاقد معنا؟',
          'Contract with us (new account)': 'تعاقد معنا (حساب جديد)',
          'do you have an account ?': 'هل لديك حساب؟',
          'create a new account': 'إنشاء حساب جديد',
          'skip for now': 'تخطي الآن',
          'continue without account': 'متابعة بدون حساب',
          'Email': 'البريد الإلكتروني',
          'Enter Email': 'أدخل البريد الإلكتروني',
          'Password': 'كلمة المرور',
          'Enter Password': 'أدخل كلمة المرور',
          'Don\'t have an account?': 'ليس لديك حساب؟',
          'Forgot Password?': 'هل نسيت كلمة المرور؟',
          'Signup': 'التسجيل',
          'Create an account': 'إنشاء حساب',
          'Enter Full Name': 'أدخل الاسم الكامل',
          'Enter Phone': 'أدخل الهاتف',
          'Confirm Password': 'تأكيد كلمة المرور',
          'Already have an account?': 'هل لديك حساب بالفعل؟',
          'Orders': 'الطلبات',
          'Add New Order': 'أضف طلبًا جديدًا',
          'Enter Quantity': 'أدخل الكمية',
          'Location Selected': 'الموقع المحدد',
          'Select Location': 'حدد الموقع',
          'Add': 'إضافة',
          'getting location...': 'جارٍ الحصول على الموقع...',
          'Company Details': 'تفاصيل الشركة',
          'Contract': 'تعاقد',
          'Home': 'الرئيسية',
          'New Order': 'طلب جديد',
          'Profile': 'الملف الشخصي',
          'Add Suggestions Or Complaints': 'أضف اقتراحات أو شكاوى',
          'Suggestions Or Complaints': 'الاقتراحات أو الشكاوى',
          'User not found': 'المستخدم غير موجود',
          'Suggestions And Complaints': 'الاقتراحات والشكاوى',
          'Please Enter Your Suggestions Or Complaints':
              'يرجى إدخال اقتراحاتك أو شكاويك',
          'Password should be at least 6 characters':
              'يجب أن تتكون كلمة المرور من 6 أحرف على الأقل',
          'All fields are required': 'جميع الحقول مطلوبة',
          'Password does not match': 'كلمة المرور غير متطابقة',
          'Please Enter Email': 'يرجى إدخال البريد الإلكتروني',
          'Please Enter Email and Password':
              'يرجى إدخال البريد الإلكتروني وكلمة المرور',
          'Request to renew the contract': 'طلب تجديد العقد',
          'Are you sure?, you want to renew the contract':
              'هل أنت متأكد؟ تريد تجديد العقد',
          'Cancel': 'إلغاء',
          'Yes': 'نعم',
          'No': 'لا',
          'Logout': 'تسجيل الخروج',
          'Please fill all fields': 'يرجى ملء جميع الحقول',
          'Please select location': 'يرجى اختيار الموقع',
          'A copy of the commercial register': 'نسخة من السجل التجاري',
          'A copy of the tax ID card': 'نسخة من بطاقة الرقم الضريبي',
          'A copy of the contractor’s ID card': 'نسخة من بطاقة هوية المقاول',
          'Passwords do not match': 'كلمات المرور غير متطابقة',
          'Please upload all files': 'يرجى تحميل جميع الملفات',
          'Order submitted successfully': 'تم تقديم الطلب بنجاح',
          'Suggestion and Complaint submitted successfully':
              'تم تقديم الاقتراح والشكاوى بنجاح',
          'Contract renewed submitted successfully': 'تم تجديد العقد بنجاح',
          "The account already exists with a different credential.":
              "الحساب موجود بالفعل بمعلومات اعتماد مختلفة.",
          "The email is already in use by another account.":
              "البريد الإلكتروني مستخدم بالفعل من قبل حساب آخر.",
          "The provided credential is invalid.":
              "معلومات الاعتماد المقدمة غير صالحة.",
          "The email address is badly formatted.":
              "عنوان البريد الإلكتروني غير منسق بشكل صحيح.",
          "The credential verification code is invalid.":
              "رمز التحقق من الاعتماد غير صالح.",
          "The credential verification ID is invalid.":
              "معرف التحقق من الاعتماد غير صالح.",
          "The app is not authorized to use Firebase Authentication.":
              "التطبيق غير مصرح له باستخدام Firebase Authentication.",
          "The app is not installed.": "التطبيق غير مثبت.",
          "An error occurred in the arguments provided.":
              "حدث خطأ في المعطيات المقدمة.",
          "The API key provided is invalid.": "مفتاح API المقدم غير صالح.",
          "The user's credential is no longer valid.":
              "معلومات اعتماد المستخدم لم تعد صالحة.",
          "A network error occurred. Please check your internet connection.":
              "حدث خطأ في الشبكة. يرجى التحقق من اتصالك بالإنترنت.",
          "No authentication event occurred.": "لم يحدث أي حدث مصادقة.",
          "The specified operation is not allowed.":
              "العملية المحددة غير مسموح بها.",
          "The operation requires a recent login. Please log in again.":
              "العملية تتطلب تسجيل دخول حديث. يرجى تسجيل الدخول مرة أخرى.",
          "Too many requests. Please try again later.":
              "عدد كبير جدا من الطلبات. يرجى المحاولة مرة أخرى في وقت لاحق.",
          "The user account has been disabled by an administrator.":
              "تم تعطيل حساب المستخدم من قبل مسؤول.",
          "No user found with the provided credentials.":
              "لم يتم العثور على مستخدم بمعلومات الاعتماد المقدمة.",
          "The password is not strong enough. Please choose a stronger password.":
              "كلمة المرور ليست قوية بما فيه الكفاية. يرجى اختيار كلمة مرور أقوى.",
          "The password is incorrect. Please try again.":
              "كلمة المرور غير صحيحة. يرجى المحاولة مرة أخرى.",
          "The operation was cancelled.": "تم إلغاء العملية.",
          "An unknown error occurred.": "حدث خطأ غير معروف.",
          "An invalid argument was provided.": "تم تقديم حجة غير صالحة.",
          "The operation took too long to complete.":
              "استغرقت العملية وقتًا طويلاً لإكمالها.",
          "The requested document was not found.":
              "الوثيقة المطلوبة لم يتم العثور عليها.",
          "The document already exists.": "الوثيقة موجودة بالفعل.",
          "You do not have permission to perform this operation.":
              "ليس لديك إذن لتنفيذ هذه العملية.",
          "Resource limit has been exceeded.": "تم تجاوز حد الموارد.",
          "The operation failed due to a precondition.":
              "فشلت العملية بسبب شرط مسبق.",
          "The operation was aborted.": "تم إجهاض العملية.",
          "The operation was attempted past the valid range.":
              "تمت محاولة العملية خارج النطاق الصالح.",
          "The operation is not implemented.": "لم يتم تنفيذ العملية.",
          "An internal error occurred.": "حدث خطأ داخلي.",
          "The service is currently unavailable. Please try again later.":
              "الخدمة غير متاحة حاليًا. يرجى المحاولة مرة أخرى لاحقًا.",
          "Data loss occurred.": "حدث فقدان للبيانات.",
          "You need to authenticate to perform this operation.":
              "تحتاج إلى المصادقة لتنفيذ هذه العملية.",
          "No object found at the specified reference.":
              "لم يتم العثور على أي كائن في المرجع المحدد.",
          "No bucket is configured for Firebase Storage.":
              "لم يتم تكوين أي دلو لتخزين Firebase.",
          "No project is configured for Firebase Storage.":
              "لم يتم تكوين أي مشروع لتخزين Firebase.",
          "The storage quota has been exceeded.": "تم تجاوز حصة التخزين.",
          "The operation took too long to complete. Please try again.":
              "استغرقت العملية وقتًا طويلاً لإكمالها. يرجى المحاولة مرة أخرى.",
          "The file checksum does not match.":
              "لا يتطابق المجموع الاختباري للملف.",
          "An invalid event name was provided.": "تم تقديم اسم حدث غير صالح.",
          "The URL provided is invalid.": "الرابط المقدم غير صالح.",
          "A transient error occurred. Please try again.":
              "حدث خطأ مؤقت. يرجى المحاولة مرة أخرى.",
          "The file size on the server does not match the specified size.":
              "حجم الملف على الخادم لا يتطابق مع الحجم المحدد.",
          'Oil complex': 'مجمع زيوت',
          'Economic company': 'شركة اقتصادية',
          'Register with us': 'التسجيل معنا',
          'Register': 'التسجيل',
          'Add Company Details (Optional)': 'اضافة تفاصيل الشركة (اختياري)',
          'FullName':'الاسم',
          'Phone':'الهاتف',
           'Order':'الطلب',
          'Quantity':'الكمية',
          'Location':'الموقع',
          'Date':'التاريخ',
         
         

        },
        'fr_FR': {
                    'Continue':'Continue',
          'ok':'ok',

          'you dont have any orders':'Vous n’avez pas de commandes',

          'Delete Your Account': 'Supprimer votre compte',
          'Delete Account': 'Supprimer le compte',
          'to delete your account please click on the button below':
              'pour supprimer votre compte merci de cliquer sur le bouton ci-dessous',
          'Delete my account': 'Supprimer mon compte',
          'Are you sure you want to delete your account?':
              'Etes-vous sûr de vouloir supprimer votre compte ?',
          'Welcome': 'Bienvenue',
          'Welcome to Fwo App': 'Bienvenue sur l\'application Fwo',
          'Login': 'Connexion',
          'Login to your account': 'Connectez-vous à votre compte',
          'Get Started': 'Commencer',
          'Get started with Fwo App': 'Commencez avec l\'application Fwo',
          'Skip': 'Passer',
          'Done': 'Terminé',
          'Continue as': 'Continuer en tant que',
          'Company': 'Entreprise',
          'Person': 'Personne',
          'Station': 'Station',
          'are you contracted with us ?': 'êtes-vous contracté avec nous ?',
          'Contract with us (new account)':
              'Contractez avec nous (nouveau compte)',
          'do you have an account ?': 'avez-vous un compte ?',
          'create a new account': 'créer un nouveau compte',
          'skip for now': 'passer pour l\'instant',
          'continue without account': 'continuer sans compte',
          'Email': 'Email',
          'Enter Email': 'Entrez l\'email',
          'Password': 'Mot de passe',
          'Enter Password': 'Entrez le mot de passe',
          'Don\'t have an account?': 'Vous n\'avez pas de compte ?',
          'Forgot Password?': 'Mot de passe oublié ?',
          'Signup': 'S\'inscrire',
          'Create an account': 'Créer un compte',
          'Enter Full Name': 'Entrez le nom complet',
          'Enter Phone': 'Entrez le téléphone',
          'Confirm Password': 'Confirmer le mot de passe',
          'Already have an account?': 'Vous avez déjà un compte ?',
          'Orders': 'Commandes',
          'Add New Order': 'Ajouter une nouvelle commande',
          'Enter Quantity': 'Entrez la quantité',
          'Location Selected': 'Lieu sélectionné',
          'Select Location': 'Sélectionnez l\'emplacement',
          'Add': 'Ajouter',
          'getting location...': 'obtention de la localisation...',
          'Company Details': 'Détails de l\'entreprise',
          'Contract': 'Contrat',
          'Home': 'Accueil',
          'New Order': 'Nouvelle commande',
          'Profile': 'Profil',
          'Add Suggestions Or Complaints':
              'Ajouter des suggestions ou des plaintes',
          'Suggestions Or Complaints': 'Suggestions ou plaintes',
          'User not found': 'Utilisateur non trouvé',
          'Suggestions And Complaints': 'Suggestions et plaintes',
          'Please Enter Your Suggestions Or Complaints':
              'Veuillez entrer vos suggestions ou plaintes',
          'Password should be at least 6 characters':
              'Le mot de passe doit comporter au moins 6 caractères',
          'All fields are required': 'Tous les champs sont requis',
          'Password does not match': 'Le mot de passe ne correspond pas',
          'Please Enter Email': 'Veuillez entrer l\'email',
          'Please Enter Email and Password':
              'Veuillez entrer l\'email et le mot de passe',
          'Request to renew the contract':
              'Demande de renouvellement du contrat',
          'Are you sure?, you want to renew the contract':
              'Êtes-vous sûr ? Vous voulez renouveler le contrat',
          'Cancel': 'Annuler',
          'Yes': 'Oui',
          'No': 'Non',
          'Logout': 'Déconnexion',
          'Please fill all fields': 'Veuillez remplir tous les champs',
          'Please select location': 'Veuillez sélectionner l\'emplacement',
          'A copy of the commercial register':
              'Une copie du registre du commerce',
          'A copy of the tax ID card':
              'Une copie de la carte d\'identification fiscale',
          'A copy of the contractor’s ID card':
              'Une copie de la carte d\'identité de l\'entrepreneur',
          'Passwords do not match': 'Les mots de passe ne correspondent pas',
          'Please upload all files': 'Veuillez télécharger tous les fichiers',
          'Order submitted successfully': 'Commande soumise avec succès',
          'Suggestion and Complaint submitted successfully':
              'Suggestion et plainte soumises avec succès',
          'Contract renewed submitted successfully':
              'Renouvellement du contrat soumis avec succès',
          "The account already exists with a different credential.":
              "Le compte existe déjà avec des informations d'identification différentes.",
          "The email is already in use by another account.":
              "L'email est déjà utilisé par un autre compte.",
          "The provided credential is invalid.":
              "Les informations d'identification fournies sont invalides.",
          "The email address is badly formatted.":
              "L'adresse e-mail est mal formatée.",
          "The credential verification code is invalid.":
              "Le code de vérification des informations d'identification est invalide.",
          "The credential verification ID is invalid.":
              "L'ID de vérification des informations d'identification est invalide.",
          "The app is not authorized to use Firebase Authentication.":
              "L'application n'est pas autorisée à utiliser l'authentification Firebase.",
          "The app is not installed.": "L'application n'est pas installée.",
          "An error occurred in the arguments provided.":
              "Une erreur s'est produite dans les arguments fournis.",
          "The API key provided is invalid.":
              "La clé API fournie est invalide.",
          "The user's credential is no longer valid.":
              "Les informations d'identification de l'utilisateur ne sont plus valides.",
          "A network error occurred. Please check your internet connection.":
              "Une erreur de réseau s'est produite. Veuillez vérifier votre connexion Internet.",
          "No authentication event occurred.":
              "Aucun événement d'authentification ne s'est produit.",
          "The specified operation is not allowed.":
              "L'opération spécifiée n'est pas autorisée.",
          "The operation requires a recent login. Please log in again.":
              "L'opération nécessite une connexion récente. Veuillez vous reconnecter.",
          "Too many requests. Please try again later.":
              "Trop de demandes. Veuillez réessayer plus tard.",
          "The user account has been disabled by an administrator.":
              "Le compte utilisateur a été désactivé par un administrateur.",
          "No user found with the provided credentials.":
              "Aucun utilisateur trouvé avec les informations d'identification fournies.",
          "The password is not strong enough. Please choose a stronger password.":
              "Le mot de passe n'est pas assez fort. Veuillez choisir un mot de passe plus fort.",
          "The password is incorrect. Please try again.":
              "Le mot de passe est incorrect. Veuillez réessayer.",
          "The operation was cancelled.": "L'opération a été annulée.",
          "An unknown error occurred.": "Une erreur inconnue s'est produite.",
          "An invalid argument was provided.":
              "Un argument invalide a été fourni.",
          "The operation took too long to complete.":
              "L'opération a pris trop de temps à se terminer.",
          "The requested document was not found.":
              "Le document demandé n'a pas été trouvé.",
          "The document already exists.": "Le document existe déjà.",
          "You do not have permission to perform this operation.":
              "Vous n'avez pas la permission d'effectuer cette opération.",
          "Resource limit has been exceeded.":
              "La limite des ressources a été dépassée.",
          "The operation failed due to a precondition.":
              "L'opération a échoué en raison d'une condition préalable.",
          "The operation was aborted.": "L'opération a été avortée.",
          "The operation was attempted past the valid range.":
              "L'opération a été tentée au-delà de la plage valide.",
          "The operation is not implemented.":
              "L'opération n'est pas mise en œuvre.",
          "An internal error occurred.": "Une erreur interne s'est produite.",
          "The service is currently unavailable. Please try again later.":
              "Le service est actuellement indisponible. Veuillez réessayer plus tard.",
          "Data loss occurred.": "Une perte de données s'est produite.",
          "You need to authenticate to perform this operation.":
              "Vous devez vous authentifier pour effectuer cette opération.",
          "No object found at the specified reference.":
              "Aucun objet trouvé à la référence spécifiée.",
          "No bucket is configured for Firebase Storage.":
              "Aucun bucket n'est configuré pour le stockage Firebase.",
          "No project is configured for Firebase Storage.":
              "Aucun projet n'est configuré pour le stockage Firebase.",
          "The storage quota has been exceeded.":
              "Le quota de stockage a été dépassé.",
          "The operation took too long to complete. Please try again.":
              "L'opération a pris trop de temps à se terminer. Veuillez réessayer.",
          "The file checksum does not match.":
              "Le checksum du fichier ne correspond pas.",
          "An invalid event name was provided.":
              "Un nom d'événement invalide a été fourni.",
          "The URL provided is invalid.": "L'URL fournie est invalide.",
          "A transient error occurred. Please try again.":
              "Une erreur transitoire s'est produite. Veuillez réessayer.",
          "The file size on the server does not match the specified size.":
              "La taille du fichier sur le serveur ne correspond pas à la taille spécifiée.",
          'Oil complex': 'Complexe pétrolier',
          'Economic company': 'Entreprise économique',
          'Register with us': 'S’inscrire avec nous',
          'Register': 'S’inscrire',
          'Add Company Details (Optional)':
          'Ajouter les données de l’entreprise\n(facultatif)',
          'FullName':'Nom',
          'Phone':'Telephone',
          'Quantity':'Quantité',
          'Location':'Emplacement',
          'Date':'Date',
         
          

        }
      };
}
