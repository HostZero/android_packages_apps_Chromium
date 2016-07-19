.class Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;
.super Landroid/os/AsyncTask;
.source "InterestsItemView.java"


# instance fields
.field private final mImageHolder:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 196
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;->mUrl:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;->mImageHolder:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;

    .line 198
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;->mResources:Landroid/content/res/Resources;

    .line 199
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 206
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 211
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/v4/b/a/b;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/b/a/p;

    move-result-object v0

    .line 213
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/b/a/p;->b(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string/jumbo v1, "InterestsItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error downloading image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;->mImageHolder:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->set(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
