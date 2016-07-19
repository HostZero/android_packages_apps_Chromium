.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "ChromeTabbedActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method

.method private closeIfNoTabsAndHomepageEnabled()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->isHomepageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTotalTabCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->finish()V

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 3

    .prologue
    .line 251
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableAnimations(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    sget v1, Lorg/chromium/chrome/R$string;->open_in_new_tab_toast:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;II)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 257
    :cond_0
    return-void
.end method

.method public didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;->closeIfNoTabsAndHomepageEnabled()V

    .line 234
    return-void
.end method

.method public tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;->closeIfNoTabsAndHomepageEnabled()V

    .line 239
    return-void
.end method
