.class public Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;
.super Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
.source "DocumentRecentTabsManager.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCurrentlyOpenTabs:Ljava/util/List;

.field private mDialog:Landroid/app/Dialog;

.field private mShowingAllInCurrentTabs:Z

.field private final mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

.field private mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private final mUpdateOpenTabsObserver:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->getOriginalProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/profiles/Profile;Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mActivity:Landroid/app/Activity;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mCurrentlyOpenTabs:Ljava/util/List;

    .line 63
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    .line 65
    new-instance v0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$1;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$1;-><init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mUpdateOpenTabsObserver:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;

    .line 81
    new-instance v0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$2;-><init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    .line 93
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->updateCurrentlyOpenTabs()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->updateCurrentlyOpenTabsWhenDatabaseReady()V

    return-void
.end method

.method static synthetic access$201(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;I)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->openForeignSessionTab(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;I)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$401(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;I)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->openRecentlyClosedTab(Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;I)V

    return-void
.end method

.method private updateCurrentlyOpenTabsWhenDatabaseReady()V
    .locals 9

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v2

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 190
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v3

    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mCurrentlyOpenTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 193
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getTaskInfoFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 196
    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 197
    invoke-static {v4}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v4

    .line 198
    iget-object v5, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v5, v4}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getCurrentUrlForDocument(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "chrome-native://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 203
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    .line 204
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_1
    new-instance v6, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$5;

    invoke-direct {v6, p0, v4}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$5;-><init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;I)V

    .line 215
    new-instance v7, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;

    invoke-direct {v7, p0, v2, v4, v6}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;-><init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;IILjava/lang/Runnable;)V

    .line 224
    iget-object v6, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mCurrentlyOpenTabs:Ljava/util/List;

    new-instance v8, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;

    invoke-direct {v8, v4, v5, v0, v7}, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 226
    :cond_2
    return-void
.end method


# virtual methods
.method public closeTab(Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;)V
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;->getTabId()I

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v2, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    .line 171
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->postUpdate()V

    .line 178
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->destroy()V

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    .line 108
    return-void
.end method

.method public getCurrentlyOpenTabs()Ljava/util/List;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mCurrentlyOpenTabs:Ljava/util/List;

    return-object v0
.end method

.method public isCurrentlyOpenTabsShowingAll()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mShowingAllInCurrentTabs:Z

    return v0
.end method

.method public openForeignSessionTab(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;I)V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 116
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$3;-><init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;)V

    const-wide/16 v2, 0x96

    invoke-static {v0, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 125
    return-void
.end method

.method public openHistoryPage()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 146
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->openHistoryPage()V

    .line 147
    return-void
.end method

.method public openRecentlyClosedTab(Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;I)V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 132
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$4;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$4;-><init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;)V

    const-wide/16 v2, 0x96

    invoke-static {v0, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 141
    return-void
.end method

.method public setCurrentlyOpenTabsShowAll(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mShowingAllInCurrentTabs:Z

    .line 157
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->postUpdate()V

    .line 158
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;

    .line 102
    return-void
.end method

.method protected updateCurrentlyOpenTabs()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mUpdateOpenTabsObserver:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->runWhenReady()V

    .line 183
    return-void
.end method
