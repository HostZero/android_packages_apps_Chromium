.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;
.super Landroid/os/Handler;
.source "ToolbarManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1157
    const-class v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 1160
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1161
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    const/16 v2, 0xa

    # += operator for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mProgress:I
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->access$3212(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;I)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mProgress:I
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->access$3202(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;I)I

    .line 1162
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->access$3300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;)Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mProgress:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->access$3200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;)I

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateLoadProgress(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)V

    .line 1164
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mProgress:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->access$3200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1165
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->access$3300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;)Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->finishLoadProgress(Z)V

    .line 1169
    :goto_0
    return-void

    .line 1168
    :cond_1
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v3, v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
