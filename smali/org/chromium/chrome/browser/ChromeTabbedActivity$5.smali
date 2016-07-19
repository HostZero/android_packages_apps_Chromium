.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$5;
.super Ljava/lang/Object;
.source "ChromeTabbedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$5;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$5;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$5;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mActivityStopMetrics:Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$300(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->setStopReason(I)V

    .line 512
    const-string/jumbo v0, "TaskManagement.ReturnButtonClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$5;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$5;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->sendToBackground(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$400(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0
.end method
