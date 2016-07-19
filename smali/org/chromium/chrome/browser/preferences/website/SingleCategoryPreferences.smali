.class public Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;
.super Landroid/preference/PreferenceFragment;
.source "SingleCategoryPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment$Listener;
.implements Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EXPLAIN_PROTECTED_MEDIA_KEY:Ljava/lang/String; = "protected_content_learn_more"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final READ_WRITE_TOGGLE_KEY:Ljava/lang/String; = "read_write_toggle"

.field public static final THIRD_PARTY_COOKIES_TOGGLE_KEY:Ljava/lang/String; = "third_party_cookies"


# instance fields
.field private mAllowListExpanded:Z

.field private mAllowedSiteCount:I

.field private mBlockListExpanded:Z

.field private mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

.field private mEmptyView:Landroid/widget/TextView;

.field private mGroupByAllowBlock:Z

.field private mIsInitialRun:Z

.field private mSearch:Ljava/lang/String;

.field private mSearchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mGroupByAllowBlock:Z

    .line 72
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mBlockListExpanded:Z

    .line 74
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowListExpanded:Z

    .line 76
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mIsInitialRun:Z

    .line 78
    iput v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowedSiteCount:I

    .line 107
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->updateBlockedHeader(I)V

    return-void
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;IZ)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->updateAllowedHeader(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->displayEmptyScreenMessage()V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getInfoForOrigins()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->resetList()V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowedSiteCount:I

    return v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowedSiteCount:I

    return p1
.end method

.method static synthetic access$412(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;I)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowedSiteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowedSiteCount:I

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mGroupByAllowBlock:Z

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->isOnBlockList(Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mIsInitialRun:Z

    return v0
.end method

.method static synthetic access$702(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mIsInitialRun:Z

    return p1
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mBlockListExpanded:Z

    return v0
.end method

.method static synthetic access$802(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mBlockListExpanded:Z

    return p1
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowListExpanded:Z

    return v0
.end method

.method private configureGlobalToggles()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 509
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "read_write_toggle"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 513
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "third_party_cookies"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 515
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCookiesSites()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 516
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 517
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->updateThirdPartyCookiesCheckBox()V

    .line 523
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showProtectedMediaSites()Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "protected_content_learn_more"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 528
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showAllSites()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showStorageSites()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 530
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 531
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "allowed_group"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 533
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "blocked_group"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 612
    :cond_2
    :goto_1
    return-void

    .line 519
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 537
    :cond_4
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mGroupByAllowBlock:Z

    if-nez v1, :cond_5

    .line 538
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mBlockListExpanded:Z

    .line 539
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowListExpanded:Z

    .line 541
    :cond_5
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mGroupByAllowBlock:Z

    .line 542
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "allowed_group"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 545
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "blocked_group"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 549
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showPermissionBlockedMessage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 550
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 551
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 552
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 555
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 556
    new-instance v1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 557
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3, v5}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->configurePermissionIsOffPreferences(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/app/Activity;Z)V

    .line 559
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 560
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 562
    :cond_6
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 563
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 566
    :cond_7
    invoke-virtual {v1, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 567
    invoke-virtual {v2, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 570
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->toContentSettingsType()I

    move-result v1

    .line 571
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 572
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getTitle(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setTitle(I)V

    .line 573
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showGeolocationSites()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isLocationAllowedByPolicy()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 575
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getGeolocationAllowedSummary()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setSummaryOn(I)V

    .line 581
    :goto_2
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getDisabledSummary(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setSummaryOff(I)V

    .line 583
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->isManaged()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->isManagedByCustodian()Z

    move-result v1

    if-nez v1, :cond_8

    .line 584
    sget v1, Lorg/chromium/chrome/R$drawable;->controlled_setting_mandatory:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setIcon(I)V

    .line 586
    :cond_8
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCameraSites()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 587
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isCameraEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 578
    :cond_9
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getEnabledSummary(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setSummaryOn(I)V

    goto :goto_2

    .line 588
    :cond_a
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showGeolocationSites()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 589
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getInstance()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->isChromeLocationSettingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 591
    :cond_b
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCookiesSites()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 592
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAcceptCookiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 594
    :cond_c
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showFullscreenSites()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 595
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isFullscreenAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 597
    :cond_d
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showJavaScriptSites()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 598
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->javaScriptEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 599
    :cond_e
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showMicrophoneSites()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 600
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isMicEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 601
    :cond_f
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showPopupSites()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 602
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->popupsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 603
    :cond_10
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showNotificationsSites()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 604
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isNotificationsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 606
    :cond_11
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showProtectedMediaSites()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isProtectedMediaIdentifierEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method private displayEmptyScreenMessage()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mEmptyView:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->no_saved_website_settings:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    :cond_0
    return-void
.end method

.method private getAddExceptionDialogMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showJavaScriptSites()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    sget v0, Lorg/chromium/chrome/R$string;->website_settings_add_site_description_javascript:I

    .line 449
    :cond_0
    sget-boolean v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 450
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInfoForOrigins()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->enabledInAndroid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->resetList()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;

    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$1;)V

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;)V

    .line 98
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->fetchPreferencesForCategory(Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;)V

    goto :goto_0
.end method

.method private isOnBlockList(Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCookiesSites()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->site()Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCookiePermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-ne v2, v3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 210
    goto :goto_0

    .line 211
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCameraSites()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->site()Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->getCameraPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 213
    :cond_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showFullscreenSites()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 214
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->site()Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->getFullscreenPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 215
    :cond_4
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showGeolocationSites()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->site()Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->getGeolocationPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 217
    :cond_5
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showJavaScriptSites()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 218
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->site()Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->getJavaScriptPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 219
    :cond_6
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showMicrophoneSites()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 220
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->site()Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->getMicrophonePermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 221
    :cond_7
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showPopupSites()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 222
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->site()Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->getPopupPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 223
    :cond_8
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showNotificationsSites()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 224
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->site()Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->getNotificationPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 225
    :cond_9
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showProtectedMediaSites()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 226
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->site()Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/Website;->getProtectedMediaIdentifierPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 229
    goto/16 :goto_0
.end method

.method private resetList()V
    .locals 5

    .prologue
    .line 493
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 495
    sget v0, Lorg/chromium/chrome/R$xml;->website_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->addPreferencesFromResource(I)V

    .line 497
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->configureGlobalToggles()V

    .line 499
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showJavaScriptSites()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->javaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "add_exception"

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getAddExceptionDialogMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 505
    :cond_0
    return-void
.end method

.method private showManagedToast()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->isManagedByCustodian()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferencesUtils;->showManagedByParentToast(Landroid/content/Context;)V

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferencesUtils;->showManagedByAdministratorToast(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateAllowedHeader(IZ)V
    .locals 3

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "allowed_group"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;

    .line 240
    if-nez p1, :cond_1

    .line 241
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mGroupByAllowBlock:Z

    if-eqz v1, :cond_0

    .line 248
    if-eqz p2, :cond_2

    sget v1, Lorg/chromium/chrome/R$string;->website_settings_allowed_group_heading:I

    .line 253
    :goto_1
    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->setGroupTitle(II)V

    .line 254
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowListExpanded:Z

    if-eqz v1, :cond_3

    sget v1, Lorg/chromium/chrome/R$drawable;->ic_expanded:I

    :goto_2
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v1

    .line 256
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowListExpanded:Z

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->setExpanded(Z)V

    .line 257
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 248
    :cond_2
    sget v1, Lorg/chromium/chrome/R$string;->website_settings_exceptions_group_heading:I

    goto :goto_1

    .line 254
    :cond_3
    sget v1, Lorg/chromium/chrome/R$drawable;->ic_collapsed:I

    goto :goto_2
.end method

.method private updateBlockedHeader(I)V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "blocked_group"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;

    .line 263
    if-nez p1, :cond_1

    .line 264
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mGroupByAllowBlock:Z

    if-eqz v1, :cond_0

    .line 270
    sget v1, Lorg/chromium/chrome/R$string;->website_settings_blocked_group_heading:I

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->setGroupTitle(II)V

    .line 271
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mBlockListExpanded:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/chromium/chrome/R$drawable;->ic_expanded:I

    :goto_1
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v1

    .line 273
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mBlockListExpanded:Z

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->setExpanded(Z)V

    .line 274
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 271
    :cond_2
    sget v1, Lorg/chromium/chrome/R$drawable;->ic_collapsed:I

    goto :goto_1
.end method

.method private updateThirdPartyCookiesCheckBox()V
    .locals 2

    .prologue
    .line 615
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "third_party_cookies"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 617
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAcceptCookiesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setEnabled(Z)V

    .line 618
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$3;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 624
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 279
    sget v0, Lorg/chromium/chrome/R$xml;->website_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->addPreferencesFromResource(I)V

    .line 280
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 281
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mEmptyView:Landroid/widget/TextView;

    .line 282
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 283
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 287
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "category"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    if-nez v0, :cond_1

    .line 292
    const-string/jumbo v0, "all_sites"

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    .line 295
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->configureGlobalToggles()V

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->setHasOptionsMenu(Z)V

    .line 302
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 303
    return-void
.end method

.method public onAddSite(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 475
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->toContentSettingsType()I

    move-result v1

    sget-object v2, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toInt()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetContentSettingForPattern(ILjava/lang/String;I)V

    .line 479
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->website_settings_add_site_toast:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 485
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getInfoForOrigins()V

    .line 486
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 308
    sget v0, Lorg/chromium/chrome/R$menu;->website_preferences_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    sget v0, Lorg/chromium/chrome/R$id;->search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/support/v4/view/G;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->a(I)V

    .line 313
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$1;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    .line 329
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->a(Landroid/support/v7/widget/bo;)V

    .line 331
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showProtectedMediaSites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget v0, Lorg/chromium/chrome/R$string;->reset_device_credentials:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 335
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$2;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 346
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->menu_id_targeted_help:I

    sget v1, Lorg/chromium/chrome/R$string;->menu_help:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 348
    sget v1, Lorg/chromium/chrome/R$drawable;->ic_help_and_feedback:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 349
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->menu_id_targeted_help:I

    if-ne v0, v1, :cond_1

    .line 354
    sget v0, Lorg/chromium/chrome/R$string;->help_context_settings:I

    .line 355
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showProtectedMediaSites()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    sget v0, Lorg/chromium/chrome/R$string;->help_context_protected_content:I

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x1

    .line 362
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 393
    const-string/jumbo v0, "read_write_toggle"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return v2

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showGeolocationSites()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setAllowLocationEnabled(Z)V

    .line 419
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showJavaScriptSites()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 421
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v3, "add_exception"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v3, "read_write_toggle"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 435
    iget v3, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowedSiteCount:I

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_3
    invoke-direct {p0, v3, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->updateAllowedHeader(IZ)V

    .line 437
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getInfoForOrigins()V

    :cond_3
    :goto_4
    move v2, v1

    .line 441
    goto :goto_0

    .line 398
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCookiesSites()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 399
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setAllowCookiesEnabled(Z)V

    .line 400
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->updateThirdPartyCookiesCheckBox()V

    goto :goto_1

    .line 401
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCameraSites()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 402
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setCameraEnabled(Z)V

    goto :goto_1

    .line 403
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showFullscreenSites()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 404
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setFullscreenAllowed(Z)V

    goto/16 :goto_1

    .line 405
    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showJavaScriptSites()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 406
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setJavaScriptEnabled(Z)V

    goto/16 :goto_1

    .line 407
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showMicrophoneSites()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 408
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setMicEnabled(Z)V

    goto/16 :goto_1

    .line 409
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showPopupSites()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 410
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setAllowPopupsEnabled(Z)V

    goto/16 :goto_1

    .line 411
    :cond_a
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showNotificationsSites()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 412
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setNotificationsEnabled(Z)V

    goto/16 :goto_1

    .line 413
    :cond_b
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showProtectedMediaSites()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setProtectedMediaIdentifierEnabled(Z)V

    goto/16 :goto_1

    .line 427
    :cond_c
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    new-instance v3, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "add_exception"

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getAddExceptionDialogMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, p0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;)V

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 435
    goto/16 :goto_3

    .line 438
    :cond_e
    const-string/jumbo v0, "third_party_cookies"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_f

    move v2, v1

    :cond_f
    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setBlockThirdPartyCookiesEnabled(Z)V

    goto/16 :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 456
    const-string/jumbo v2, "allowed_group"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowListExpanded:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowListExpanded:Z

    .line 461
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getInfoForOrigins()V

    .line 462
    return v1

    .line 459
    :cond_1
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mBlockListExpanded:Z

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mBlockListExpanded:Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "read_write_toggle"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->isManaged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->showManagedToast()V

    .line 387
    :goto_0
    return v0

    .line 374
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    const-string/jumbo v1, ""

    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;

    .line 378
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearchView:Landroid/support/v7/widget/SearchView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 381
    :cond_1
    instance-of v0, p2, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 382
    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;

    .line 383
    const-class v1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->setFragment(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v1, "org.chromium.chrome.preferences.site"

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;->putSiteIntoExtras(Ljava/lang/String;)V

    .line 387
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 467
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 469
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getInfoForOrigins()V

    .line 470
    return-void
.end method

.method public resetDeviceCredential()V
    .locals 1

    .prologue
    .line 637
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$4;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/cdm/MediaDrmCredentialManager;->resetCredentials(Lorg/chromium/chrome/browser/media/cdm/MediaDrmCredentialManager$MediaDrmCredentialManagerCallback;)V

    .line 645
    return-void
.end method
