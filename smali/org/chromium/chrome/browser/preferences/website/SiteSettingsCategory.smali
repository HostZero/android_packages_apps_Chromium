.class public Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;
.super Ljava/lang/Object;
.source "SiteSettingsCategory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CATEGORY_ALL_SITES:Ljava/lang/String; = "all_sites"

.field public static final CATEGORY_CAMERA:Ljava/lang/String; = "camera"

.field public static final CATEGORY_COOKIES:Ljava/lang/String; = "cookies"

.field public static final CATEGORY_DEVICE_LOCATION:Ljava/lang/String; = "device_location"

.field public static final CATEGORY_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field public static final CATEGORY_JAVASCRIPT:Ljava/lang/String; = "javascript"

.field public static final CATEGORY_MICROPHONE:Ljava/lang/String; = "microphone"

.field public static final CATEGORY_NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field public static final CATEGORY_POPUPS:Ljava/lang/String; = "popups"

.field public static final CATEGORY_PROTECTED_MEDIA:Ljava/lang/String; = "protected_content"

.field public static final CATEGORY_USE_STORAGE:Ljava/lang/String; = "use_storage"


# instance fields
.field private mAndroidPermission:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mContentSettingsType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    .line 68
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mCategory:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mAndroidPermission:Ljava/lang/String;

    .line 70
    iput p3, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    .line 71
    return-void
.end method

.method public static fromContentSettingsType(I)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    .line 135
    const-string/jumbo v0, "camera"

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 137
    :cond_0
    if-nez p0, :cond_1

    .line 138
    const-string/jumbo v0, "cookies"

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 141
    const-string/jumbo v0, "javascript"

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    .line 144
    const-string/jumbo v0, "device_location"

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    .line 147
    const-string/jumbo v0, "fullscreen"

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_4
    const/16 v0, 0xb

    if-ne p0, v0, :cond_5

    .line 150
    const-string/jumbo v0, "microphone"

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_6

    .line 153
    const-string/jumbo v0, "popups"

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_6
    const/16 v0, 0x13

    if-ne p0, v0, :cond_7

    .line 157
    const-string/jumbo v0, "protected_content"

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_7
    const/4 v0, 0x6

    if-ne p0, v0, :cond_8

    .line 160
    const-string/jumbo v0, "notifications"

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 78
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    const-string/jumbo v0, "all_sites"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    const-string/jumbo v1, "all_sites"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    :goto_0
    return-object v0

    .line 82
    :cond_1
    const-string/jumbo v0, "camera"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    const-string/jumbo v1, "camera"

    const-string/jumbo v2, "android.permission.CAMERA"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 88
    :cond_2
    const-string/jumbo v0, "cookies"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    const-string/jumbo v1, "cookies"

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 92
    :cond_3
    const-string/jumbo v0, "javascript"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    const-string/jumbo v1, "javascript"

    const-string/jumbo v2, ""

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 96
    :cond_4
    const-string/jumbo v0, "device_location"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/LocationCategory;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/website/LocationCategory;-><init>()V

    goto :goto_0

    .line 99
    :cond_5
    const-string/jumbo v0, "fullscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    const-string/jumbo v1, "fullscreen"

    const-string/jumbo v2, ""

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 103
    :cond_6
    const-string/jumbo v0, "microphone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    const-string/jumbo v1, "microphone"

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 109
    :cond_7
    const-string/jumbo v0, "popups"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 110
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    const-string/jumbo v1, "popups"

    const-string/jumbo v2, ""

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 113
    :cond_8
    const-string/jumbo v0, "protected_content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 114
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    const-string/jumbo v1, "protected_content"

    const-string/jumbo v2, ""

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 117
    :cond_9
    const-string/jumbo v0, "notifications"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 118
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    const-string/jumbo v1, "notifications"

    const-string/jumbo v2, ""

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 121
    :cond_a
    const-string/jumbo v0, "use_storage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 122
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    const-string/jumbo v1, "use_storage"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 125
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getAppInfoIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 432
    return-object v0
.end method

.method private getIntentToEnableOsPerAppPermission(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->enabledForChrome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->getAppInfoIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private permissionOnInAndroid(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 440
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public configurePermissionIsOffPreferences(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/app/Activity;Z)V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->getIntentToEnableOsPerAppPermission(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 306
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->getIntentToEnableOsGlobalPermission(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 307
    if-nez p4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, p3, v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->getMessageForEnablingOsPerAppPermission(Landroid/app/Activity;Z)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->getMessageForEnablingOsGlobalPermission(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 311
    sget v7, Lorg/chromium/chrome/R$color;->pref_accent_color:I

    invoke-static {v6, v7}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v6

    .line 312
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 314
    if-eqz v3, :cond_0

    .line 315
    new-array v6, v1, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v8, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v9, "<link>"

    const-string/jumbo v10, "</link>"

    invoke-direct {v8, v9, v10, v7}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v6, v2

    invoke-static {v0, v6}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    .line 317
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 320
    if-nez p4, :cond_0

    .line 321
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->getDisabledInAndroidIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 325
    :cond_0
    if-eqz v4, :cond_1

    .line 326
    new-array v0, v1, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v6, "<link>"

    const-string/jumbo v8, "</link>"

    invoke-direct {v1, v6, v8, v7}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    invoke-static {v5, v0}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    .line 328
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 331
    if-nez p4, :cond_1

    .line 332
    if-nez v3, :cond_3

    .line 333
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->getDisabledInAndroidIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 307
    goto :goto_0

    .line 335
    :cond_3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 336
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected enabledForChrome(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mAndroidPermission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mAndroidPermission:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->permissionOnInAndroid(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method protected enabledGlobally()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method enabledInAndroid(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->enabledGlobally()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->enabledForChrome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDisabledInAndroidIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->exclamation_triangle:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 349
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->pref_accent_color:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    .line 351
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 352
    return-object v0
.end method

.method protected getIntentToEnableOsGlobalPermission(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMessageForEnablingOsGlobalPermission(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMessageForEnablingOsPerAppPermission(Landroid/app/Activity;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_0

    sget v0, Lorg/chromium/chrome/R$string;->android_permission_off_plural:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->android_permission_off:I

    goto :goto_0
.end method

.method public isManaged()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    .line 259
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCameraSites()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isCameraUserModifiable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 259
    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCookiesSites()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAcceptCookiesManaged()Z

    move-result v0

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showFullscreenSites()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isFullscreenManaged()Z

    move-result v0

    goto :goto_0

    .line 262
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showGeolocationSites()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 263
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAllowLocationUserModifiable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 265
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showJavaScriptSites()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->javaScriptManaged()Z

    move-result v0

    goto :goto_0

    .line 266
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showMicrophoneSites()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isMicUserModifiable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 267
    :cond_7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showPopupSites()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isPopupsManaged()Z

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public isManagedByCustodian()Z
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showGeolocationSites()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAllowLocationManagedByCustodian()Z

    move-result v0

    .line 286
    :goto_0
    return v0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCameraSites()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isCameraManagedByCustodian()Z

    move-result v0

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showMicrophoneSites()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isMicManagedByCustodian()Z

    move-result v0

    goto :goto_0

    .line 286
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAllSites()Z
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "all_sites"

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public showCameraSites()Z
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCookiesSites()Z
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showFullscreenSites()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showGeolocationSites()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showJavaScriptSites()Z
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showMicrophoneSites()Z
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showNotificationsSites()Z
    .locals 2

    .prologue
    .line 234
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showPermissionBlockedMessage(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->enabledForChrome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->enabledGlobally()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPopupSites()Z
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showProtectedMediaSites()Z
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showStorageSites()Z
    .locals 2

    .prologue
    .line 250
    const-string/jumbo v0, "use_storage"

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toContentSettingsType()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->mContentSettingsType:I

    return v0
.end method
