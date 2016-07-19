.class Lorg/chromium/chrome/browser/cookies/CookiesFetcher$3;
.super Landroid/os/AsyncTask;
.source "CookiesFetcher.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$3;->this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 267
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$3;->this$0:Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    # invokes: Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->fetchFileName()Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->access$100(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    const-string/jumbo v1, "CookiesFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
