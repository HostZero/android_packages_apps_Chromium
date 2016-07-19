.class Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$12;
.super Ljava/lang/Object;
.source "ToolbarPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V
    .locals 0

    .prologue
    .line 1904
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$12;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1907
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$12;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$12;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Z

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateVisualsForToolbarState(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$1600(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)V

    .line 1908
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$12;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateNtpAnimationState()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$1700(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V

    .line 1909
    return-void
.end method
