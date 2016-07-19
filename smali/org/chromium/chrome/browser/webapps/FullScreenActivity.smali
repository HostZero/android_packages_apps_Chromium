.class public abstract Lorg/chromium/chrome/browser/webapps/FullScreenActivity;
.super Lorg/chromium/chrome/browser/ChromeActivity;
.source "FullScreenActivity.java"


# static fields
.field protected static final BUNDLE_TAB_ID:Ljava/lang/String; = "tabId"

.field protected static final BUNDLE_TAB_URL:Ljava/lang/String; = "tabUrl"


# instance fields
.field private mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;-><init>()V

    return-void
.end method

.method private createTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 113
    .line 118
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "tabId"

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 120
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "tabUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    if-eq v1, v13, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getActivityDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getActivityDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getTabFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v9, v0}, Lorg/chromium/chrome/browser/TabState;->readState(Ljava/io/FileInputStream;Z)Lorg/chromium/chrome/browser/TabState;

    move-result-object v8

    .line 129
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v5

    sget-object v6, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    sget-object v7, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/tab/Tab;-><init>(IIZLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;Lorg/chromium/chrome/browser/TabState;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    invoke-static {v9}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    move v9, v11

    .line 142
    :goto_1
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v5

    sget-object v6, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move v1, v13

    move v2, v13

    move v3, v12

    move-object v4, p0

    move-object v7, v10

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/tab/Tab;-><init>(IIZLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;Lorg/chromium/chrome/browser/TabState;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getTabContentManager()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->createTabDelegateFactory()Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    move-result-object v3

    move-object v1, v10

    move v4, v12

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tab/Tab;->initialize(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;ZZ)V

    .line 148
    new-instance v1, Lorg/chromium/chrome/browser/webapps/FullScreenActivity$2;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity$2;-><init>(Lorg/chromium/chrome/browser/webapps/FullScreenActivity;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    .line 160
    return-object v0

    .line 133
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 134
    :goto_2
    :try_start_2
    const-string/jumbo v2, "FullScreenActivity"

    const-string/jumbo v3, "Failed to restore tab state."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 138
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    move v9, v12

    move-object v0, v10

    .line 139
    goto :goto_1

    .line 135
    :catch_1
    move-exception v0

    move-object v9, v10

    .line 136
    :goto_3
    :try_start_3
    const-string/jumbo v1, "FullScreenActivity"

    const-string/jumbo v2, "Failed to restore tab state."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    invoke-static {v9}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    move v9, v12

    move-object v0, v10

    .line 139
    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    move-object v9, v10

    :goto_4
    invoke-static {v9}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v9, v1

    goto :goto_4

    .line 135
    :catch_2
    move-exception v0

    goto :goto_3

    .line 133
    :catch_3
    move-exception v0

    move-object v1, v9

    goto :goto_2

    :cond_1
    move v9, v12

    move-object v0, v10

    goto :goto_1

    :cond_2
    move-object v0, v10

    move v1, v13

    goto/16 :goto_0
.end method

.method protected static getTabFile(Ljava/io/File;I)Ljava/io/File;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/chromium/chrome/browser/TabState;->getTabStateFilename(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected createTabDelegate(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;-><init>(Z)V

    return-object v0
.end method

.method protected createTabDelegateFactory()Lorg/chromium/chrome/browser/tab/TabDelegateFactory;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/webapps/FullScreenDelegateFactory;-><init>()V

    return-object v0
.end method

.method public finishNativeInitialization()V
    .locals 4

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->createTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 81
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_NEW:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->show(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V

    .line 84
    sget v0, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/ControlContainer;

    .line 85
    new-instance v3, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->initializeCompositorContent(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Landroid/view/View;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/widget/ControlContainer;)V

    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setFullscreenManager(Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;)V

    .line 90
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->finishNativeInitialization()V

    .line 91
    return-void
.end method

.method protected getActivityDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method public getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    return-object v0
.end method

.method public bridge synthetic getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    move-result-object v0

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->goBack()V

    .line 189
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected initializeToolbar()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onCheckForUpdate(Z)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->setIntent(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public preInflationStartup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->preInflationStartup()V

    .line 62
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->createTabDelegate(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->createTabDelegate(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->setTabCreators(Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;)V

    .line 63
    new-instance v0, Lorg/chromium/chrome/browser/webapps/FullScreenActivity$1;

    invoke-direct {v0, p0, p0, v2, v2}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity$1;-><init>(Lorg/chromium/chrome/browser/webapps/FullScreenActivity;Landroid/app/Activity;ZZ)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 71
    return-void
.end method
