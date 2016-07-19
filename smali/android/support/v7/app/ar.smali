.class final Landroid/support/v7/app/ar;
.super Landroid/os/AsyncTask;
.source "MediaRouteControllerDialog.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/net/Uri;

.field private c:I

.field private synthetic d:Landroid/support/v7/app/aj;


# direct methods
.method constructor <init>(Landroid/support/v7/app/aj;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 949
    iput-object p1, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 950
    invoke-static {p1}, Landroid/support/v7/app/aj;->s(Landroid/support/v7/app/aj;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/support/v7/app/ar;->a:Landroid/graphics/Bitmap;

    .line 951
    invoke-static {p1}, Landroid/support/v7/app/aj;->s(Landroid/support/v7/app/aj;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Landroid/support/v7/app/ar;->b:Landroid/net/Uri;

    .line 952
    return-void

    .line 950
    :cond_0
    invoke-static {p1}, Landroid/support/v7/app/aj;->s(Landroid/support/v7/app/aj;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 951
    :cond_1
    invoke-static {p1}, Landroid/support/v7/app/aj;->s(Landroid/support/v7/app/aj;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->d()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 964
    .line 965
    iget-object v2, p0, Landroid/support/v7/app/ar;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 966
    iget-object v1, p0, Landroid/support/v7/app/ar;->a:Landroid/graphics/Bitmap;

    .line 1016
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1018
    new-instance v2, Landroid/support/v7/graphics/Palette$Builder;

    invoke-direct {v2, v1}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v7}, Landroid/support/v7/graphics/Palette$Builder;->maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v2

    .line 1019
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_1
    iput v0, p0, Landroid/support/v7/app/ar;->c:I

    :cond_1
    move-object v0, v1

    .line 1022
    :goto_2
    return-object v0

    .line 967
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/ar;->b:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 968
    iget-object v2, p0, Landroid/support/v7/app/ar;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 969
    const-string/jumbo v3, "android.resource"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 972
    const-string/jumbo v0, "MediaRouteControllerDialog"

    const-string/jumbo v2, "Icon Uri should point to local resources."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 973
    goto :goto_2

    .line 977
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    invoke-static {v2}, Landroid/support/v7/app/aj;->c(Landroid/support/v7/app/aj;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/app/ar;->b:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 982
    const/4 v2, 0x1

    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 983
    const/4 v2, 0x0

    invoke-static {v3, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 984
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v2, :cond_4

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_5

    .line 1010
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    move-object v0, v1

    .line 1012
    goto :goto_2

    .line 989
    :cond_5
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 997
    :goto_4
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 998
    iget-object v2, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v5, v6}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;II)I

    move-result v2

    .line 999
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v5, v2

    .line 1000
    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1001
    invoke-virtual {p0}, Landroid/support/v7/app/ar;->isCancelled()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-eqz v2, :cond_6

    .line 1010
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    move-object v0, v1

    .line 1012
    goto/16 :goto_2

    .line 992
    :catch_0
    move-exception v2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 993
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    invoke-static {v5}, Landroid/support/v7/app/aj;->c(Landroid/support/v7/app/aj;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/app/ar;->b:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v2

    goto :goto_4

    .line 1004
    :cond_6
    const/4 v2, 0x0

    invoke-static {v3, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    .line 1010
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1012
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 1005
    :catch_2
    move-exception v2

    move-object v3, v1

    .line 1006
    :goto_6
    :try_start_8
    const-string/jumbo v4, "MediaRouteControllerDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unable to open: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v7/app/ar;->b:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1008
    if-eqz v3, :cond_0

    .line 1010
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 1012
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 1008
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_7
    if-eqz v3, :cond_7

    .line 1010
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1012
    :cond_7
    :goto_8
    throw v0

    .line 1019
    :cond_8
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_8

    .line 1008
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 1005
    :catch_7
    move-exception v2

    goto :goto_6
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 944
    invoke-direct {p0}, Landroid/support/v7/app/ar;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;Landroid/support/v7/app/ar;)Landroid/support/v7/app/ar;

    .line 1028
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 944
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2032
    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;Landroid/support/v7/app/ar;)Landroid/support/v7/app/ar;

    .line 2033
    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->t(Landroid/support/v7/app/aj;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/ar;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->u(Landroid/support/v7/app/aj;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/ar;->b:Landroid/net/Uri;

    if-eq v0, v1, :cond_1

    .line 2034
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    iget-object v1, p0, Landroid/support/v7/app/ar;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2035
    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    iget-object v1, p0, Landroid/support/v7/app/ar;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2037
    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->v(Landroid/support/v7/app/aj;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2038
    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->v(Landroid/support/v7/app/aj;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/ar;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 2039
    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->f(Landroid/support/v7/app/aj;)V

    .line 944
    :cond_1
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->t(Landroid/support/v7/app/aj;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/ar;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ar;->d:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->u(Landroid/support/v7/app/aj;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/ar;->b:Landroid/net/Uri;

    if-ne v0, v1, :cond_0

    .line 958
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ar;->cancel(Z)Z

    .line 960
    :cond_0
    return-void
.end method
