.class Lorg/chromium/chrome/browser/cookies/CookiesFetcher$2;
.super Landroid/os/AsyncTask;
.source "CookiesFetcher.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

.field final synthetic val$cookies:[Lorg/chromium/chrome/browser/cookies/CanonicalCookie;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;[Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$2;->this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    iput-object p2, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$2;->val$cookies:[Lorg/chromium/chrome/browser/cookies/CanonicalCookie;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$2;->this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    iget-object v1, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$2;->val$cookies:[Lorg/chromium/chrome/browser/cookies/CanonicalCookie;

    # invokes: Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->saveFetchedCookiesToDisk([Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->access$500(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;[Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method
