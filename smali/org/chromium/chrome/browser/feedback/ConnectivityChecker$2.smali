.class final Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;
.super Landroid/os/AsyncTask;
.source "ConnectivityChecker.java"


# instance fields
.field final synthetic val$callback:Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;

.field final synthetic val$timeoutMs:I

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;ILorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;->val$url:Ljava/net/URL;

    iput p2, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;->val$timeoutMs:I

    iput-object p3, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;->val$callback:Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;->val$url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 105
    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 108
    iget v1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;->val$timeoutMs:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 109
    iget v1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;->val$timeoutMs:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 111
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 112
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 113
    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    .line 114
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 123
    :catch_2
    move-exception v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;->val$callback:Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;->onResult(I)V

    .line 130
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
