.class Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;
.super Ljava/lang/Object;
.source "SingleCategoryPreferences.java"

# interfaces
.implements Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$1;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    return-void
.end method


# virtual methods
.method public onWebsitePermissionsAvailable(Ljava/util/Map;Ljava/util/Map;)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/Website;

    .line 120
    iget-object v7, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;
    invoke-static {v7}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$100(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getTitle()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;
    invoke-static {v8}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$100(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 121
    :cond_3
    new-instance v7, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;

    iget-object v8, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;
    invoke-static {v9}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$200(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v9

    invoke-direct {v7, v8, v0, v9}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/preferences/website/Website;Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/Website;

    .line 129
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 130
    iget-object v7, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;
    invoke-static {v7}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$100(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getTitle()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mSearch:Ljava/lang/String;
    invoke-static {v8}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$100(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 131
    :cond_7
    new-instance v7, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;

    iget-object v8, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mCategory:Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;
    invoke-static {v9}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$200(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;

    move-result-object v9

    invoke-direct {v7, v8, v0, v9}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/preferences/website/Website;Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 138
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->resetList()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$300(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    .line 139
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # setter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowedSiteCount:I
    invoke-static {v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$402(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;I)I

    .line 142
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mGroupByAllowBlock:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$500(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 146
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;

    .line 147
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_9
    move v3, v4

    .line 191
    :cond_a
    :goto_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->updateBlockedHeader(I)V
    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$1000(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;I)V

    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "read_write_toggle"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 194
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowedSiteCount:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$400(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)I

    move-result v2

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->isChecked()Z

    move-result v0

    :goto_5
    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->updateAllowedHeader(IZ)V
    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$1100(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;IZ)V

    goto/16 :goto_0

    .line 151
    :cond_b
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "allowed_group"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 154
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v3, "blocked_group"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;

    .line 159
    iget-object v7, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->isOnBlockList(Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;)Z
    invoke-static {v7, v2}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$600(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;Lorg/chromium/chrome/browser/preferences/website/WebsitePreference;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 160
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 161
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 163
    :cond_c
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # += operator for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowedSiteCount:I
    invoke-static {v2, v5}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$412(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;I)I

    goto :goto_6

    .line 177
    :cond_d
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mIsInitialRun:Z
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$700(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 178
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # setter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mBlockListExpanded:Z
    invoke-static {v2, v5}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$802(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;Z)Z

    .line 179
    :cond_e
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # setter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mIsInitialRun:Z
    invoke-static {v2, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$702(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;Z)Z

    .line 182
    :cond_f
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mBlockListExpanded:Z
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$800(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 183
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 186
    :cond_10
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->mAllowListExpanded:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$900(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 187
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_4

    :cond_11
    move v0, v5

    .line 194
    goto :goto_5

    .line 197
    :cond_12
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->displayEmptyScreenMessage()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$1200(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->updateBlockedHeader(I)V
    invoke-static {v0, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$1000(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;I)V

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$ResultsPopulator;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->updateAllowedHeader(IZ)V
    invoke-static {v0, v4, v5}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->access$1100(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;IZ)V

    goto/16 :goto_0
.end method
