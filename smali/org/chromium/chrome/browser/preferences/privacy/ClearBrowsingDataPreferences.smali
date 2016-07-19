.class public Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;
.super Landroid/preference/PreferenceFragment;
.source "ClearBrowsingDataPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final PREF_CLEAR_BUTTON:Ljava/lang/String; = "clear_button"

.field public static final TAG:Ljava/lang/String; = "ClearBrowsingDataPreferences"


# instance fields
.field private mItems:[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->updateButtonState()V

    return-void
.end method

.method private final clearBrowsingData(Ljava/util/EnumSet;)V
    .locals 4

    .prologue
    .line 198
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->showProgressDialog()V

    .line 200
    invoke-virtual {p1}, Ljava/util/EnumSet;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 201
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    .line 203
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->getDataType()I

    move-result v0

    aput v0, v2, v1

    .line 204
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 205
    goto :goto_0

    .line 207
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->clearBrowsingData(Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;[I)V

    .line 208
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 214
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 215
    return-void
.end method

.method private getDialogOptions()[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    const/4 v1, 0x0

    sget-object v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_HISTORY:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_COOKIES_AND_SITE_DATA:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_CACHE:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_PASSWORDS:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_FORM_DATA:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private final getSelectedOptions()Ljava/util/EnumSet;
    .locals 6

    .prologue
    .line 186
    const-class v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mItems:[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 188
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->getOption()Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-object v1
.end method

.method private getTimePeriodSpinnerOptions()[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 237
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;

    new-instance v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;

    sget v3, Lorg/chromium/chrome/R$string;->clear_browsing_data_period_hour:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;

    sget v3, Lorg/chromium/chrome/R$string;->clear_browsing_data_period_day:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;

    sget v3, Lorg/chromium/chrome/R$string;->clear_browsing_data_period_week:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;

    sget v3, Lorg/chromium/chrome/R$string;->clear_browsing_data_period_four_weeks:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;

    sget v3, Lorg/chromium/chrome/R$string;->clear_browsing_data_period_everything:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v8

    .line 249
    return-object v1
.end method

.method private isOptionSelectedByDefault(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;)Z
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->getDataType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getBrowsingDataDeletionPreference(I)Z

    move-result v0

    return v0
.end method

.method private final showProgressDialog()V
    .locals 5

    .prologue
    .line 392
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->clear_browsing_data_progress_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->clear_browsing_data_progress_message:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private updateButtonState()V
    .locals 2

    .prologue
    .line 301
    const-string/jumbo v0, "clear_button"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ButtonPreference;

    .line 302
    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getSelectedOptions()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 304
    :goto_1
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ButtonPreference;->setEnabled(Z)V

    goto :goto_0

    .line 303
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 374
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 376
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->updateButtonState()V

    .line 379
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 380
    return-void
.end method

.method public onBrowsingDataCleared()V
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->dismissProgressDialog()V

    .line 269
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 309
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 310
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->clear_browsing_data_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 311
    sget v0, Lorg/chromium/chrome/R$xml;->clear_browsing_data_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->addPreferencesFromResource(I)V

    .line 312
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getDialogOptions()[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    move-result-object v10

    .line 313
    array-length v0, v10

    new-array v0, v0, [Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mItems:[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;

    move v6, v7

    .line 314
    :goto_0
    array-length v0, v10

    if-ge v6, v0, :cond_0

    .line 318
    aget-object v0, v10, v6

    sget-object v1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_HISTORY:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    if-ne v0, v1, :cond_6

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->canDeleteBrowsingHistory()Z

    move-result v0

    if-nez v0, :cond_6

    .line 321
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_HISTORY:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->getDataType()I

    move-result v1

    invoke-virtual {v0, v1, v7}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setBrowsingDataDeletionPreference(IZ)V

    move v5, v7

    .line 325
    :goto_1
    iget-object v11, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mItems:[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;

    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;

    aget-object v2, v10, v6

    aget-object v1, v10, v6

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    aget-object v1, v10, v6

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->isOptionSelectedByDefault(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;)Z

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;ZZ)V

    aput-object v0, v11, v6

    .line 314
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 335
    :cond_0
    const-class v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 336
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getDialogOptions()[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 337
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    .line 338
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 342
    :cond_1
    const-string/jumbo v0, "time_period_spinner"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    .line 343
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getTimePeriodSpinnerOptions()[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;

    move-result-object v1

    .line 345
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getBrowsingDataDeletionTimePeriod()I

    move-result v2

    .line 348
    :goto_3
    array-length v3, v1

    if-ge v7, v3, :cond_5

    .line 349
    aget-object v3, v1, v7

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;->getTimePeriod()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 354
    :goto_4
    sget-boolean v2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-ne v7, v9, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 348
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 355
    :cond_3
    invoke-virtual {v0, v1, v7}, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->setOptions([Ljava/lang/Object;I)V

    .line 358
    const-string/jumbo v0, "clear_button"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ButtonPreference;

    .line 359
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 360
    invoke-virtual {v0, v8}, Lorg/chromium/chrome/browser/preferences/ButtonPreference;->setShouldDisableView(Z)V

    .line 364
    const-string/jumbo v0, "summary"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 366
    sget v1, Lorg/chromium/chrome/R$string;->clear_browsing_data_footnote_signed:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 370
    :goto_5
    return-void

    .line 368
    :cond_4
    sget v1, Lorg/chromium/chrome/R$string;->clear_browsing_data_footnote:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    :cond_5
    move v7, v9

    goto :goto_4

    :cond_6
    move v5, v8

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 384
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 385
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->dismissProgressDialog()V

    .line 386
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mItems:[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 387
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->destroy()V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "time_period_spinner"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->mItems:[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 287
    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->setShouldAnnounceCounterResult(Z)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;->getTimePeriod()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setBrowsingDataDeletionTimePeriod(I)V

    .line 292
    const/4 v0, 0x1

    .line 294
    :cond_1
    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "clear_button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->getSelectedOptions()Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->clearBrowsingData(Ljava/util/EnumSet;)V

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
