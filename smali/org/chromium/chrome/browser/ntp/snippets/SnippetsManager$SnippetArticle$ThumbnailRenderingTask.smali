.class Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;
.super Landroid/os/AsyncTask;
.source "SnippetsManager.java"


# instance fields
.field private mThumbnailView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;->mThumbnailView:Landroid/widget/ImageView;

    .line 104
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 108
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 120
    :goto_0
    return-object v0

    .line 111
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    const-string/jumbo v2, "thumbnail"

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 118
    invoke-static {v0}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 114
    :goto_1
    :try_start_2
    const-string/jumbo v3, "SnippetsManager"

    const-string/jumbo v4, "Could not get image thumbnail due to malformed URL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 118
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    move-object v0, v1

    .line 120
    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 116
    :goto_3
    :try_start_3
    const-string/jumbo v3, "SnippetsManager"

    const-string/jumbo v4, "Could not get image thumbnail"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 118
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 115
    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    .line 113
    :catch_3
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
