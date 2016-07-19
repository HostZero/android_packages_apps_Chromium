.class final Lorg/chromium/chrome/browser/signin/OAuth2TokenService$2;
.super Ljava/lang/Object;
.source "OAuth2TokenService.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;


# instance fields
.field final synthetic val$nativeCallback:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 149
    iput-wide p1, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$2;->val$nativeCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tokenAvailable(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 152
    const/4 v0, 0x0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$2;->val$nativeCallback:J

    # invokes: Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->nativeOAuth2TokenFetched(Ljava/lang/String;ZJ)V
    invoke-static {p1, v0, v2, v3}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->access$000(Ljava/lang/String;ZJ)V

    .line 153
    return-void
.end method

.method public final tokenUnavailable(Z)V
    .locals 4

    .prologue
    .line 157
    const/4 v0, 0x0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$2;->val$nativeCallback:J

    # invokes: Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->nativeOAuth2TokenFetched(Ljava/lang/String;ZJ)V
    invoke-static {v0, p1, v2, v3}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->access$000(Ljava/lang/String;ZJ)V

    .line 158
    return-void
.end method
