.class Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolbarPhone.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V
    .locals 0

    .prologue
    .line 1362
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1365
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Z

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateViewsForTabSwitcherMode(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$500(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)V

    .line 1366
    return-void
.end method
