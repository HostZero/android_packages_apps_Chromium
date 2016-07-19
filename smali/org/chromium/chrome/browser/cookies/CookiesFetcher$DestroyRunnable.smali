.class final Lorg/chromium/chrome/browser/cookies/CookiesFetcher$DestroyRunnable;
.super Ljava/lang/Object;
.source "CookiesFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mNativeCookiesFetcher:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-wide p1, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$DestroyRunnable;->mNativeCookiesFetcher:J

    .line 283
    return-void
.end method

.method synthetic constructor <init>(JLorg/chromium/chrome/browser/cookies/CookiesFetcher$1;)V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$DestroyRunnable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 287
    iget-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$DestroyRunnable;->mNativeCookiesFetcher:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$DestroyRunnable;->mNativeCookiesFetcher:J

    # invokes: Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->nativeDestroy(J)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->access$600(J)V

    .line 288
    :cond_0
    return-void
.end method
