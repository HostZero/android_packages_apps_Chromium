.class public Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;
.super Landroid/preference/PreferenceFragment;
.source "DataReductionPreferences.java"


# static fields
.field public static final PREF_DATA_REDUCTION_SWITCH:Ljava/lang/String; = "data_reduction_switch"


# instance fields
.field private mIsEnabled:Z

.field private mWasEnabledAtCreation:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private createDataReductionSwitch(Z)V
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    const-string/jumbo v1, "data_reduction_switch"

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 193
    sget v1, Lorg/chromium/chrome/R$string;->text_on:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setSummaryOn(I)V

    .line 194
    sget v1, Lorg/chromium/chrome/R$string;->text_off:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setSummaryOff(I)V

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setDrawDivider(Z)V

    .line 196
    new-instance v1, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$1;-><init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    new-instance v1, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$2;-><init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setManagedPreferenceDelegate(Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;)V

    .line 213
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->setChecked(Z)V

    .line 220
    return-void
.end method

.method public static generateSummary(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getContentLengthPercentSavings()Ljava/lang/String;

    move-result-object v0

    .line 163
    sget v1, Lorg/chromium/chrome/R$string;->data_reduction_menu_item_summary:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->text_off:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static getDisplayedDataReductionInfoBar(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 223
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "displayed_data_reduction_infobar"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getNetworkStatsHistory([JI)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;
    .locals 12

    .prologue
    const-wide/32 v10, 0x5265c00

    .line 171
    array-length v0, p0

    if-le p1, v0, :cond_0

    array-length p1, p0

    .line 172
    :cond_0
    new-instance v1, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    const/4 v0, 0x2

    invoke-direct {v1, v10, v11, p1, v0}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;-><init>(JII)V

    .line 176
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getDataReductionLastUpdateTime()J

    move-result-wide v2

    int-to-long v4, p1

    mul-long/2addr v4, v10

    sub-long v8, v2, v4

    .line 178
    array-length v0, p0

    sub-int v2, v0, p1

    const/4 v0, 0x0

    move v7, v2

    :goto_0
    array-length v2, p0

    if-ge v7, v2, :cond_1

    .line 179
    new-instance v6, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;

    invoke-direct {v6}, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;-><init>()V

    .line 180
    aget-wide v2, p0, v7

    iput-wide v2, v6, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->rxBytes:J

    .line 181
    int-to-long v2, v0

    mul-long/2addr v2, v10

    add-long/2addr v2, v8

    .line 183
    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, v2

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->recordData(JJLorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;)V

    .line 178
    add-int/lit8 v2, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    move v7, v2

    goto :goto_0

    .line 186
    :cond_1
    return-object v1
.end method

.method public static launchDataReductionSSLInfoBar(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isIncludedInAltFieldTrial()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyManaged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->getFirstRunFlowComplete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getDisplayedDataReductionInfoBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget v0, Lorg/chromium/chrome/R$string;->data_reduction_infobar_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->learn_more:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->data_reduction_experiment_link_url:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/chromium/chrome/browser/infobar/DataReductionProxyInfoBar;->launch(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->setDisplayedDataReductionInfoBar(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private static setDisplayedDataReductionInfoBar(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 228
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "displayed_data_reduction_infobar"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lorg/chromium/chrome/R$xml;->data_reduction_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->data_reduction_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 72
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v2

    .line 74
    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->mIsEnabled:Z

    .line 75
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->mWasEnabledAtCreation:Z

    .line 76
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->updatePreferences(Z)V

    .line 78
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->setHasOptionsMenu(Z)V

    .line 79
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 101
    sget v0, Lorg/chromium/chrome/R$id;->menu_id_targeted_help:I

    sget v1, Lorg/chromium/chrome/R$string;->menu_help:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 103
    sget v1, Lorg/chromium/chrome/R$drawable;->ic_help_and_feedback:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 86
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->mWasEnabledAtCreation:Z

    if-eqz v0, :cond_1

    .line 87
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 95
    :goto_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyUIAction(I)V

    .line 96
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    .line 91
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->mIsEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->menu_id_targeted_help:I

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->help_context_data_reduction:I

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePreferences(Z)V
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 124
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->createDataReductionSwitch(Z)V

    .line 125
    if-eqz p1, :cond_2

    .line 126
    sget v0, Lorg/chromium/chrome/R$xml;->data_reduction_preferences:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->addPreferencesFromResource(I)V

    .line 127
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->updateReductionStatistics()V

    .line 137
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->mIsEnabled:Z

    goto :goto_0

    .line 129
    :cond_2
    sget v0, Lorg/chromium/chrome/R$xml;->data_reduction_preferences_off:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->addPreferencesFromResource(I)V

    .line 130
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isIncludedInAltFieldTrial()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "data_reduction_experiment_text"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "data_reduction_experiment_link"

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public updateReductionStatistics()V
    .locals 7

    .prologue
    const/16 v6, 0x1e

    .line 144
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v2, "data_reduction_stats"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    .line 148
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getOriginalNetworkStatsHistory()[J

    move-result-object v2

    .line 149
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getReceivedNetworkStatsHistory()[J

    move-result-object v3

    .line 150
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getDataReductionLastUpdateTime()J

    move-result-wide v4

    invoke-static {v2, v6}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getNetworkStatsHistory([JI)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    move-result-object v1

    invoke-static {v3, v6}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->getNetworkStatsHistory([JI)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    move-result-object v2

    invoke-virtual {v0, v4, v5, v1, v2}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->setReductionStats(JLorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;)V

    .line 154
    return-void
.end method
