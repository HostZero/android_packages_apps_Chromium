.class public Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchEngineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;


# instance fields
.field private mCallback:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSearchEngines:Ljava/util/List;

.field private mSelectedSearchEnginePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    .line 84
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 87
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mCallback:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;

    .line 89
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->initEntries()V

    .line 90
    return-void
.end method

.method private initEntries()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->registerLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V

    .line 109
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->load()V

    .line 130
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getLocalizedSearchEngines()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSearchEngines:Ljava/util/List;

    .line 115
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getDefaultSearchEngineIndex()I

    move-result v2

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSearchEngines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSearchEngines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->getIndex()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 120
    iput v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    .line 118
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 125
    :cond_2
    const-string/jumbo v0, ""

    .line 126
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    if-ltz v1, :cond_3

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSearchEngines:Ljava/util/List;

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->getShortName()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mCallback:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;->currentSearchEngineDetermined(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private locationEnabled(IZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 291
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->toIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getSearchEngineUrlFromTemplateUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    new-instance v2, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    .line 298
    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-ne v2, v3, :cond_2

    if-eqz p2, :cond_2

    .line 299
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->isGeoHeaderEnabledForUrl(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 301
    :cond_2
    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onLocationLinkClicked()V
    .locals 5

    .prologue
    .line 273
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getInstance()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->isSystemLocationSettingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getInstance()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getSystemLocationSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 287
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mCallback:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;->onDismissDialog()V

    .line 288
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 279
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->toIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getSearchEngineUrlFromTemplateUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->createFragmentArgsForSite(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 282
    const-string/jumbo v2, "org.chromium.chrome.preferences.location"

    iget v3, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->locationEnabled(IZ)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    const-string/jumbo v2, "show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 285
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private searchEngineSelected(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 251
    const-string/jumbo v1, "search_engine_location_auto_allowed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    invoke-direct {p0, v1, v3}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->locationEnabled(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->toIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getSearchEngineUrlFromTemplateUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    sget-object v2, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->DEFAULT:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->toInt()I

    move-result v2

    invoke-static {v1, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeSetGeolocationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 258
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "search_engine_location_auto_allowed"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 262
    :cond_1
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    .line 263
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->toIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->setSearchEngine(I)V

    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSearchEngines:Ljava/util/List;

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    .line 267
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mCallback:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;->currentSearchEngineDetermined(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method

.method private toIndex(I)I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSearchEngines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->getIndex()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSearchEngines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSearchEngines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    .line 146
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->getShortName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method getValueForTesting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 156
    .line 157
    if-nez p2, :cond_0

    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lorg/chromium/chrome/R$layout;->search_engine:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 161
    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    sget v0, Lorg/chromium/chrome/R$id;->radiobutton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 172
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSelectedSearchEnginePosition:I

    if-ne p1, v1, :cond_3

    move v3, v4

    .line 173
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 174
    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 176
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 178
    sget v1, Lorg/chromium/chrome/R$id;->description:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mSearchEngines:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    .line 180
    iget-object v6, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 181
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setImportantForAccessibility(I)V

    .line 187
    new-instance v0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$1;

    invoke-direct {v0, p0, v3}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$1;-><init>(Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;Z)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 202
    sget v0, Lorg/chromium/chrome/R$id;->link:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    if-eqz v3, :cond_4

    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    if-eqz v3, :cond_2

    .line 205
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v1, Lorg/chromium/chrome/R$color;->pref_accent_color:I

    invoke-static {v6, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 207
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->getInstance()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->isSystemLocationSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 208
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v4}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->locationEnabled(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lorg/chromium/chrome/R$string;->search_engine_location_allowed:I

    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v2, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 214
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_2
    return-object p2

    :cond_3
    move v3, v5

    .line 172
    goto :goto_0

    .line 203
    :cond_4
    const/16 v1, 0x8

    goto :goto_1

    .line 208
    :cond_5
    sget v1, Lorg/chromium/chrome/R$string;->search_engine_location_blocked:I

    goto :goto_2

    .line 216
    :cond_6
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->android_location_off:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v6, "<link>"

    const-string/jumbo v7, "</link>"

    invoke-direct {v4, v6, v7, v2}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->onLocationLinkClicked()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->searchEngineSelected(I)V

    goto :goto_0
.end method

.method public onTemplateUrlServiceLoaded()V
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->unregisterLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V

    .line 232
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->initEntries()V

    .line 233
    return-void
.end method

.method setValueForTesting(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->searchEngineSelected(I)V

    .line 100
    return-void
.end method
