.class final Lorg/chromium/chrome/browser/signin/OAuth2TokenService$3;
.super Ljava/lang/Object;
.source "OAuth2TokenService.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;


# instance fields
.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$3;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tokenAvailable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$3;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 198
    return-void
.end method

.method public final tokenUnavailable(Z)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$3;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 204
    return-void
.end method
