.class Lorg/chromium/chrome/browser/metrics/VariationsSession$1;
.super Ljava/lang/Object;
.source "VariationsSession.java"

# interfaces
.implements Lorg/chromium/base/Callback;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/metrics/VariationsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/metrics/VariationsSession;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/metrics/VariationsSession$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/metrics/VariationsSession;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lorg/chromium/chrome/browser/metrics/VariationsSession$1;->this$0:Lorg/chromium/chrome/browser/metrics/VariationsSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/metrics/VariationsSession$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/VariationsSession$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/VariationsSession$1;->this$0:Lorg/chromium/chrome/browser/metrics/VariationsSession;

    # setter for: Lorg/chromium/chrome/browser/metrics/VariationsSession;->mRestrictMode:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/metrics/VariationsSession;->access$002(Lorg/chromium/chrome/browser/metrics/VariationsSession;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/VariationsSession$1;->this$0:Lorg/chromium/chrome/browser/metrics/VariationsSession;

    iget-object v1, p0, Lorg/chromium/chrome/browser/metrics/VariationsSession$1;->this$0:Lorg/chromium/chrome/browser/metrics/VariationsSession;

    # getter for: Lorg/chromium/chrome/browser/metrics/VariationsSession;->mRestrictMode:Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/metrics/VariationsSession;->access$000(Lorg/chromium/chrome/browser/metrics/VariationsSession;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/metrics/VariationsSession;->nativeStartVariationsSession(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/metrics/VariationsSession;->access$100(Lorg/chromium/chrome/browser/metrics/VariationsSession;Ljava/lang/String;)V

    .line 33
    return-void
.end method
