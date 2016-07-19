.class public Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;
.super Landroid/os/AsyncTask;
.source "MediaUrlResolver.java"


# instance fields
.field private final mDebug:Z

.field private final mDelegate:Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;

.field private final mStreamHandler:Ljava/net/URLStreamHandler;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;-><init>(Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 120
    return-void
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 124
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "enable-cast-debug"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->mDebug:Z

    .line 125
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->mDelegate:Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;

    .line 126
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->mUserAgent:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->mStreamHandler:Ljava/net/URLStreamHandler;

    .line 128
    return-void
.end method

.method private canPlayMedia(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->recordResultHistogram(I)V

    move v0, v2

    .line 219
    :goto_0
    return v0

    .line 202
    :cond_0
    if-eqz p2, :cond_2

    const-string/jumbo v0, "Access-Control-Allow-Origin"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    const-string/jumbo v0, "Access-Control-Allow-Origin"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 205
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "https://www.gstatic.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 207
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->recordResultHistogram(I)V

    move v0, v2

    .line 208
    goto :goto_0

    .line 210
    :cond_2
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->isEnhancedMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->mDebug:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "MediaUrlResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HLS stream without CORS header: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->recordResultHistogram(I)V

    move v0, v2

    .line 214
    goto :goto_0

    .line 218
    :cond_4
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->recordResultHistogram(I)V

    move v0, v3

    .line 219
    goto :goto_0
.end method

.method static getMediaType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 234
    const-string/jumbo v0, ".m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    .line 238
    :goto_0
    return v0

    .line 235
    :cond_0
    const-string/jumbo v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1d

    goto :goto_0

    .line 236
    :cond_1
    const-string/jumbo v0, ".mpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x26

    goto :goto_0

    .line 237
    :cond_2
    const-string/jumbo v0, ".ism"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x27

    goto :goto_0

    .line 238
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnhancedMedia(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 223
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->getMediaType(Ljava/lang/String;)I

    move-result v0

    .line 224
    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 184
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string/jumbo v1, "MediaUrlResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "URISyntaxException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    const-string/jumbo v1, "MediaUrlResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MalformedURLException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->doInBackground([Ljava/lang/Void;)Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->mDelegate:Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;-><init>(Ljava/lang/String;Z)V

    .line 170
    :goto_0
    return-object v0

    .line 136
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->mDelegate:Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;->getCookies()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 150
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->mStreamHandler:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v4, v3, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 151
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    const-string/jumbo v3, "Cookies"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    const-string/jumbo v2, "Origin"

    const-string/jumbo v3, "https://www.gstatic.com"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v2, "User-Agent"

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v2, "Range"

    const-string/jumbo v3, "bytes: 0-65536"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 163
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    .line 168
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    :cond_2
    :goto_2
    new-instance v2, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->canPlayMedia(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    invoke-direct {v2, v1, v0}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;-><init>(Ljava/lang/String;Z)V

    move-object v0, v2

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 165
    :goto_3
    const-string/jumbo v3, "MediaUrlResolver"

    const-string/jumbo v4, "Failed to fetch the final URI"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const-string/jumbo v0, ""

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_1

    .line 164
    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :cond_3
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->onPostExecute(Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;)V

    return-void
.end method

.method protected onPostExecute(Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;)V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 177
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver;->mDelegate:Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;->isPlayable()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;->deliverResult(Landroid/net/Uri;Z)V

    .line 178
    return-void

    .line 176
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method recordResultHistogram(I)V
    .locals 2

    .prologue
    .line 229
    const-string/jumbo v0, "Cast.Sender.UrlResolveResult"

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 231
    return-void
.end method
