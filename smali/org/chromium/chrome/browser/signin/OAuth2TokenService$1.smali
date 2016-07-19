.class final Lorg/chromium/chrome/browser/signin/OAuth2TokenService$1;
.super Ljava/lang/Object;
.source "OAuth2TokenService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$nativeCallback:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 137
    iput-wide p1, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$1;->val$nativeCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$1;->val$nativeCallback:J

    # invokes: Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->nativeOAuth2TokenFetched(Ljava/lang/String;ZJ)V
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->access$000(Ljava/lang/String;ZJ)V

    .line 141
    return-void
.end method
