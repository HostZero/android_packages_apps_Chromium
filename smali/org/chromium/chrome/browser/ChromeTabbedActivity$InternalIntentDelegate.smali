.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;
.super Ljava/lang/Object;
.source "ChromeTabbedActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 688
    const-class v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    return-void
.end method

.method private openNewTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 803
    const-string/jumbo v0, "org.chromium.chrome.browser.document.IS_ALLOWED_TO_RETURN_TO_PARENT"

    invoke-static {p5, v0, v3}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v7

    .line 806
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->getHerbFlavor()Ljava/lang/String;

    move-result-object v0

    .line 807
    if-eqz v7, :cond_0

    invoke-static {p5}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->canBeHijackedByHerb(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Dill"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mActivityStopMetrics:Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$300(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->setStopReason(I)V

    .line 814
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    const/4 v1, 0x0

    invoke-static {v0, p5, v1}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->createCustomTabActivityIntent(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 816
    const-string/jumbo v1, "com.android.browser.application_id"

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const-string/jumbo v1, "org.chromium.chrome.browser.customtabs.IS_OPENED_BY_CHROME"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->addHerbIntentExtras(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 823
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 824
    const v2, -0x10000001

    and-int/2addr v1, v2

    .line 825
    const v2, -0x80001

    and-int/2addr v1, v2

    .line 826
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 827
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 835
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move-object v6, p5

    # invokes: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->launchIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$800(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 832
    invoke-virtual {v0, v7}, Lorg/chromium/chrome/browser/tab/Tab;->setIsAllowedToReturnToExternalApp(Z)V

    .line 833
    const-string/jumbo v0, "MobileReceivedExternalIntent"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public processUrlViewIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;Ljava/lang/String;IZLandroid/content/Intent;)V
    .locals 12

    .prologue
    .line 698
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    .line 699
    sget-object v3, Lorg/chromium/chrome/browser/ChromeTabbedActivity$12;->$SwitchMap$org$chromium$chrome$browser$IntentHandler$TabOpenType:[I

    invoke-virtual/range {p4 .. p4}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 784
    sget-boolean v2, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown TabOpenType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 702
    :pswitch_0
    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUIInitialized:Z
    invoke-static {v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$600(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;
    invoke-static {v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$700(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->overviewVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 704
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;
    invoke-static {v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$700(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->hideOverview(Z)V

    .line 706
    :cond_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;
    invoke-static {v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$000(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->tryToRestoreTabStateForUrl(Ljava/lang/String;)V

    .line 707
    invoke-static {v2, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexByUrl(Lorg/chromium/chrome/browser/tabmodel/TabList;Ljava/lang/String;)I

    move-result v3

    .line 708
    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 709
    if-eqz v4, :cond_2

    .line 710
    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 711
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->reload()V

    .line 712
    const-string/jumbo v2, "MobileTabClobbered"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 716
    :goto_0
    const-string/jumbo v2, "MobileReceivedExternalIntent"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 717
    const-string/jumbo v2, "org.chromium.chrome.browser.webapp_source"

    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 719
    invoke-static {p1, v2}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->recordHomeScreenLaunchIntoTab(Ljava/lang/String;I)V

    .line 787
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setUrlBarFocus(Z)V

    .line 788
    return-void

    .line 714
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    # invokes: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->launchIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static/range {v2 .. v8}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$800(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0

    .line 722
    :pswitch_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;
    invoke-static {v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$000(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->tryToRestoreTabStateForId(I)V

    .line 724
    move/from16 v0, p6

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v3

    .line 725
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 726
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v3

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-interface {v3, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    .line 728
    move/from16 v0, p6

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v3

    .line 729
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 730
    iget-object v4, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v4

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v5

    invoke-interface {v4, v5}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    .line 731
    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 736
    :cond_3
    :goto_3
    const-string/jumbo v2, "MobileReceivedExternalIntent"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 726
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 734
    :cond_5
    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    goto :goto_3

    .line 741
    :pswitch_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 742
    if-eqz v2, :cond_6

    .line 743
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->updateIntent(Landroid/content/Intent;)V

    .line 745
    new-instance v3, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/high16 v4, 0x8000000

    invoke-direct {v3, p1, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 746
    iget-object v4, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentHandlingTimeMs:J
    invoke-static {v4}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$900(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->setIntentReceivedTimestamp(J)V

    .line 747
    move/from16 v0, p7

    invoke-virtual {v3, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setHasUserGesture(Z)V

    .line 748
    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 749
    const-string/jumbo v2, "MobileTabClobbered"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 751
    :cond_6
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    # invokes: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->launchIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static/range {v2 .. v8}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$800(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    goto/16 :goto_1

    .line 755
    :pswitch_3
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v8}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->openNewTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 758
    :pswitch_4
    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v8}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->openNewTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 761
    :pswitch_5
    if-eqz p1, :cond_7

    const-string/jumbo v2, "chrome-native://newtab/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 762
    :cond_7
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 765
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v2

    const-string/jumbo v3, "chrome-native://newtab/"

    sget-object v4, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Lorg/chromium/chrome/browser/tab/Tab;

    goto/16 :goto_1

    .line 768
    :cond_8
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v2

    const-string/jumbo v3, "chrome-native://newtab/"

    sget-object v4, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Lorg/chromium/chrome/browser/tab/Tab;

    .line 770
    const-string/jumbo v2, "MobileReceivedExternalIntent"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 773
    :cond_9
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 774
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v2

    sget-object v4, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentHandlingTimeMs:J
    invoke-static {v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$900(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)J

    move-result-wide v6

    move-object v3, p1

    move-object/from16 v5, p8

    invoke-virtual/range {v2 .. v7}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Landroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;

    goto/16 :goto_1

    .line 777
    :cond_a
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v3

    const/4 v8, 0x1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentHandlingTimeMs:J
    invoke-static {v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$900(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)J

    move-result-wide v10

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p5

    move-object/from16 v9, p8

    invoke-virtual/range {v3 .. v11}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrlFromExternalApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;

    .line 779
    const-string/jumbo v2, "MobileReceivedExternalIntent"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public processWebSearchIntent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 792
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 793
    :cond_0
    return-void
.end method
