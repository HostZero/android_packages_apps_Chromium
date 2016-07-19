.class Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$1;
.super Ljava/lang/Object;
.source "GoogleApiClientHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$1;->this$0:Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$1;->this$0:Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mPendingDisconnect:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->access$002(Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$1;->this$0:Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;

    # invokes: Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->disconnect()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->access$100(Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;)V

    .line 188
    return-void
.end method
