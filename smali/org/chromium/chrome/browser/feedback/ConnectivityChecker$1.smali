.class final Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$1;
.super Ljava/lang/Object;
.source "ConnectivityChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;I)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$1;->val$callback:Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;

    iput p2, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$1;->val$callback:Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;

    iget v1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$1;->val$result:I

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;->onResult(I)V

    .line 60
    return-void
.end method
