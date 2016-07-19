.class Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;
.super Ljava/lang/Object;
.source "TabWebContentsDelegateAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isParentInAndroidOverview()Z
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 98
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 99
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getBaseIntentFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getParentIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 80
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v3, v3, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    .line 83
    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getParentIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getParentIntent()Landroid/content/Intent;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->isParentInAndroidOverview()Z

    move-result v1

    .line 87
    :cond_0
    if-eqz v1, :cond_1

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getParentIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    :cond_1
    return-void

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
