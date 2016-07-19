.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$2;
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
    .line 478
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$2;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$2;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$2;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getPersistentFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$2;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # invokes: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->toggleOverview()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$200(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    goto :goto_0
.end method
