.class public Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;
.super Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
.source "ChromeTabCreator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private final mIncognito:Z

.field private final mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

.field private final mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

.field private mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field private mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

.field private final mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 47
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    .line 48
    iput-object p3, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    .line 49
    iput-object p4, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    .line 50
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mIncognito:Z

    .line 51
    return-void
.end method

.method private createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;ILandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 16

    .prologue
    .line 101
    :try_start_0
    const-string/jumbo v2, "ChromeTabCreator.createNewTab"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 102
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v6

    .line 105
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->fixupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setUrl(Ljava/lang/String;)V

    .line 106
    invoke-static/range {p2 .. p2}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->getTransitionType(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 109
    if-nez p5, :cond_2

    const/4 v2, -0x1

    .line 111
    :goto_1
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->remove(I)Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;

    move-result-object v3

    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mIncognito:Z

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->willOpenInForeground(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Z)Z

    move-result v15

    .line 115
    if-nez p3, :cond_3

    new-instance v4, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-direct {v4}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;-><init>()V

    move-object v14, v4

    .line 118
    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getTabToReparent()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 119
    sget-object p2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_REPARENTING:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 122
    move-object v0, v3

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;

    move-object v2, v0

    .line 123
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;->getTabToReparent()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    new-instance v5, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-direct {v5}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;-><init>()V

    invoke-virtual {v3, v4, v5}, Lorg/chromium/chrome/browser/tab/Tab;->reparentToActivity(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;)V

    .line 125
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;->finalizeTabReparenting()V

    move-object v2, v3

    .line 160
    :goto_3
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->updateIntent(Landroid/content/Intent;)V

    .line 162
    if-eqz p5, :cond_0

    const-string/jumbo v3, "org.chromium.components.service_tab_launcher.ServiceTabLauncher.LAUNCH_REQUEST_ID"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    const-string/jumbo v3, "org.chromium.components.service_tab_launcher.ServiceTabLauncher.LAUNCH_REQUEST_ID"

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;->onWebContentsForRequestAvailable(ILorg/chromium/content_public/browser/WebContents;)V

    .line 168
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v3, v2, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const-string/jumbo v3, "ChromeTabCreator.createNewTab"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-object v2

    .line 102
    :cond_1
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 109
    :cond_2
    :try_start_1
    const-string/jumbo v2, "com.android.chrome.tab_id"

    const/4 v3, -0x1

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_1

    .line 115
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/chromium/chrome/browser/tab/Tab;->getDelegateFactory()Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    move-result-object v4

    move-object v14, v4

    goto :goto_2

    .line 126
    :cond_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 128
    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v10

    .line 130
    const-string/jumbo v3, "com.android.chrome.parent_intent"

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    move-object v9, v0

    .line 132
    const-string/jumbo v3, "com.android.chrome.parent_tab_id"

    move-object/from16 v0, p5

    invoke-static {v0, v3, v6}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v7

    .line 135
    sget-boolean v3, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v3, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :catchall_0
    move-exception v2

    const-string/jumbo v3, "ChromeTabCreator.createNewTab"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mIncognito:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v8, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v8}, Lorg/chromium/chrome/browser/tab/Tab;->createLiveTab(ILorg/chromium/chrome/browser/ChromeActivity;ZLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;IZ)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    move-object v5, v14

    invoke-virtual/range {v2 .. v7}, Lorg/chromium/chrome/browser/tab/Tab;->initialize(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;ZZ)V

    .line 141
    invoke-virtual {v2, v9}, Lorg/chromium/chrome/browser/tab/Tab;->setParentIntent(Landroid/content/Intent;)V

    .line 142
    invoke-interface {v10}, Lorg/chromium/content_public/browser/WebContents;->resumeLoadingCreatedWebContents()V

    goto/16 :goto_3

    .line 143
    :cond_6
    if-nez v15, :cond_8

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mIncognito:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lorg/chromium/chrome/browser/tab/Tab;->createTabForLazyLoad(Lorg/chromium/chrome/browser/ChromeActivity;ZLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;ILorg/chromium/content_public/browser/LoadUrlParams;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 152
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-nez v15, :cond_7

    const/4 v6, 0x1

    :goto_4
    const/4 v7, 0x0

    move-object v5, v14

    invoke-virtual/range {v2 .. v7}, Lorg/chromium/chrome/browser/tab/Tab;->initialize(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;ZZ)V

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabSaver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->addTabToSaveQueue(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto/16 :goto_3

    .line 152
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 155
    :cond_8
    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mIncognito:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v15, :cond_9

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v11, p2

    move v12, v6

    invoke-static/range {v7 .. v13}, Lorg/chromium/chrome/browser/tab/Tab;->createLiveTab(ILorg/chromium/chrome/browser/ChromeActivity;ZLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;IZ)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 157
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-nez v15, :cond_a

    const/4 v6, 0x1

    :goto_6
    const/4 v7, 0x0

    move-object v5, v14

    invoke-virtual/range {v2 .. v7}, Lorg/chromium/chrome/browser/tab/Tab;->initialize(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;ZZ)V

    .line 158
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 155
    :cond_9
    const/4 v13, 0x0

    goto :goto_5

    .line 157
    :cond_a
    const/4 v6, 0x0

    goto :goto_6
.end method

.method private createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Landroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 82
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v0

    .line 84
    if-eq v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 86
    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;ILandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method private static getTransitionType(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)I
    .locals 2

    .prologue
    .line 302
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator$1;->$SwitchMap$org$chromium$chrome$browser$tabmodel$TabModel$TabLaunchType:[I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 305
    :pswitch_0
    const/high16 v0, 0x8000000

    .line 312
    :goto_0
    return v0

    .line 309
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createFrozenTab(Lorg/chromium/chrome/browser/TabState;II)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 287
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/TabState;->isIncognito()Z

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    iget v4, p1, Lorg/chromium/chrome/browser/TabState;->parentId:I

    move v0, p2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/chromium/chrome/browser/tab/Tab;->createFrozenTabFromState(ILorg/chromium/chrome/browser/ChromeActivity;ZLorg/chromium/ui/base/WindowAndroid;ILorg/chromium/chrome/browser/TabState;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/TabState;->isIncognito()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->willOpenInForeground(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Z)Z

    move-result v4

    .line 291
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    new-instance v3, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;-><init>()V

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tab/Tab;->initialize(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;ZZ)V

    .line 292
    sget-boolean v1, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/TabState;->isIncognito()Z

    move-result v1

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mIncognito:Z

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v4, v6

    .line 291
    goto :goto_0

    .line 293
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-interface {v1, v0, p3, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V

    .line 294
    return-object v0
.end method

.method public createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Landroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Ljava/lang/String;)Z
    .locals 10

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isClosurePending(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 182
    :cond_0
    const/4 v0, -0x1

    .line 183
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v1, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v1

    .line 184
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    add-int/lit8 v0, v1, 0x1

    move v7, v0

    .line 186
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mOrderController:Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mIncognito:Z

    invoke-virtual {v0, p4, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->willOpenInForeground(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Z)Z

    move-result v9

    .line 187
    if-nez p1, :cond_1

    new-instance v0, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;-><init>()V

    move-object v8, v0

    .line 189
    :goto_2
    const/4 v0, -0x1

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mIncognito:Z

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v9, :cond_2

    const/4 v6, 0x1

    :goto_3
    move-object v4, p4

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/tab/Tab;->createLiveTab(ILorg/chromium/chrome/browser/ChromeActivity;ZLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;IZ)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 191
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-nez v9, :cond_3

    const/4 v4, 0x1

    :goto_4
    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, v8

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tab/Tab;->initialize(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;ZZ)V

    .line 192
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1, v0, v7, p4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V

    .line 193
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getDelegateFactory()Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    .line 189
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 191
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    move v7, v0

    goto :goto_1
.end method

.method public createsTabsAsynchronously()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 6

    .prologue
    .line 198
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Landroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Landroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p4, p5}, Lorg/chromium/content_public/browser/LoadUrlParams;->setIntentReceivedTimestamp(J)V

    .line 216
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1, p3}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Landroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public launchUrlFromExternalApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 7

    .prologue
    .line 235
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mIncognito:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 242
    if-eqz p1, :cond_1

    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->maybeRewriteWebliteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    :cond_1
    if-eqz p5, :cond_3

    if-nez v0, :cond_3

    .line 248
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p7, p8}, Lorg/chromium/content_public/browser/LoadUrlParams;->setIntentReceivedTimestamp(J)V

    .line 250
    invoke-virtual {v0, p3}, Lorg/chromium/content_public/browser/LoadUrlParams;->setVerbatimHeaders(Ljava/lang/String;)V

    .line 251
    if-eqz p2, :cond_2

    .line 252
    new-instance v1, Lorg/chromium/content_public/common/Referrer;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lorg/chromium/content_public/common/Referrer;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 254
    :cond_2
    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p6}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Landroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 257
    :cond_3
    if-nez p4, :cond_4

    .line 260
    const-string/jumbo p4, "com.google.android.apps.chrome.unknown_app"

    .line 263
    :cond_4
    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 264
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v6

    .line 265
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->getAppAssociatedWith()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1, p7, p8}, Lorg/chromium/content_public/browser/LoadUrlParams;->setIntentReceivedTimestamp(J)V

    .line 271
    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;ILandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/tab/Tab;->setAppAssociatedWith(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v6, v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    goto :goto_0

    .line 263
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    :cond_6
    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p6

    move-wide v4, p7

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Landroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/tab/Tab;->setAppAssociatedWith(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 323
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 324
    return-void
.end method
