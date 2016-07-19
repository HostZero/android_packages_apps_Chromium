.class Lorg/chromium/content/app/ChildProcessService$1;
.super Lorg/chromium/content/common/IChildProcessService$Stub;
.source "ChildProcessService.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/content/app/ChildProcessService;


# direct methods
.method constructor <init>(Lorg/chromium/content/app/ChildProcessService;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-direct {p0}, Lorg/chromium/content/common/IChildProcessService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public crashIntentionallyForTesting()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 103
    return-void
.end method

.method public setupConnection(Landroid/os/Bundle;Lorg/chromium/content/common/IChildProcessCallback;)I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # setter for: Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;
    invoke-static {v0, p2}, Lorg/chromium/content/app/ChildProcessService;->access$002(Lorg/chromium/content/app/ChildProcessService;Lorg/chromium/content/common/IChildProcessCallback;)Lorg/chromium/content/common/IChildProcessCallback;

    .line 96
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v0, p1}, Lorg/chromium/content/app/ChildProcessService;->getServiceInfo(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method
