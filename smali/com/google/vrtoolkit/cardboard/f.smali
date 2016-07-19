.class public final Lcom/google/vrtoolkit/cardboard/f;
.super Ljava/lang/Object;
.source "HeadMountedDisplayManager.java"


# instance fields
.field private final a:Lcom/google/vrtoolkit/cardboard/e;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/f;->b:Landroid/content/Context;

    .line 54
    new-instance v2, Lcom/google/vrtoolkit/cardboard/e;

    .line 2180
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/f;->b:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 2181
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2182
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1188
    invoke-static {v1}, Lcom/google/vrtoolkit/cardboard/f;->a(Landroid/view/Display;)Lcom/google/vrtoolkit/cardboard/i;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_0

    .line 1190
    const-string/jumbo v1, "HeadMountedDisplayManager"

    const-string/jumbo v3, "Successfully read screen params from external storage"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :goto_0
    invoke-static {}, Lcom/google/vrtoolkit/cardboard/f;->d()Lcom/google/vrtoolkit/cardboard/a;

    move-result-object v1

    .line 2201
    if-eqz v1, :cond_1

    .line 2202
    const-string/jumbo v3, "HeadMountedDisplayManager"

    const-string/jumbo v4, "Successfully read device params from external storage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_1
    invoke-direct {v2, v0, v1}, Lcom/google/vrtoolkit/cardboard/e;-><init>(Lcom/google/vrtoolkit/cardboard/i;Lcom/google/vrtoolkit/cardboard/a;)V

    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/f;->a:Lcom/google/vrtoolkit/cardboard/e;

    .line 55
    return-void

    .line 1193
    :cond_0
    new-instance v0, Lcom/google/vrtoolkit/cardboard/i;

    invoke-direct {v0, v1}, Lcom/google/vrtoolkit/cardboard/i;-><init>(Landroid/view/Display;)V

    goto :goto_0

    .line 2208
    :cond_1
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/f;->c()Lcom/google/vrtoolkit/cardboard/a;

    move-result-object v1

    .line 2209
    if-eqz v1, :cond_2

    .line 2210
    const-string/jumbo v3, "HeadMountedDisplayManager"

    const-string/jumbo v4, "Successfully read device params from asset folder"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/f;->b()V

    goto :goto_1

    .line 2216
    :cond_2
    new-instance v1, Lcom/google/vrtoolkit/cardboard/a;

    invoke-direct {v1}, Lcom/google/vrtoolkit/cardboard/a;-><init>()V

    goto :goto_1
.end method

.method private static a(Landroid/view/Display;)Lcom/google/vrtoolkit/cardboard/i;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 268
    .line 270
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    const-string/jumbo v3, "phone_params"

    .line 271
    invoke-static {v3}, Landroid/support/v4/app/A;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3243
    :try_start_1
    invoke-static {v2}, Lcom/google/vrtoolkit/cardboard/g;->a(Ljava/io/InputStream;)Lcom/google/vrtoolkit/cardboard/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 3244
    if-nez v0, :cond_0

    move-object v0, v1

    .line 276
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 287
    :goto_1
    return-object v0

    .line 3247
    :cond_0
    :try_start_3
    invoke-static {p0, v0}, Lcom/google/vrtoolkit/cardboard/i;->a(Landroid/view/Display;Lcom/google/vrtoolkit/cardboard/a/b;)Lcom/google/vrtoolkit/cardboard/i;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 276
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 279
    :cond_1
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string/jumbo v2, "HeadMountedDisplayManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Cardboard screen parameters file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v0, v1

    .line 287
    goto :goto_1

    .line 284
    :catch_1
    move-exception v0

    .line 285
    const-string/jumbo v2, "HeadMountedDisplayManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Error reading Cardboard screen parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_3

    .line 274
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private b()V
    .locals 6

    .prologue
    .line 153
    const/4 v3, 0x0

    .line 154
    const/4 v2, 0x0

    .line 156
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    const-string/jumbo v4, "current_device_params"

    .line 157
    invoke-static {v4}, Landroid/support/v4/app/A;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/f;->a:Lcom/google/vrtoolkit/cardboard/e;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/e;->b()Lcom/google/vrtoolkit/cardboard/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/a;->a(Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 166
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 172
    :goto_0
    if-nez v0, :cond_1

    .line 173
    const-string/jumbo v0, "HeadMountedDisplayManager"

    const-string/jumbo v1, "Could not write Cardboard parameters to external storage."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_1
    return-void

    .line 159
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 160
    :goto_2
    :try_start_3
    const-string/jumbo v2, "HeadMountedDisplayManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Unexpected file not found exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    if-eqz v1, :cond_2

    .line 166
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v3

    .line 169
    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_0

    .line 161
    :catch_2
    move-exception v0

    .line 162
    :goto_3
    :try_start_5
    const-string/jumbo v1, "HeadMountedDisplayManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Error writing phone parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    if-eqz v2, :cond_2

    .line 166
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v3

    .line 169
    goto :goto_0

    :catch_3
    move-exception v0

    move v0, v3

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_0

    .line 166
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 169
    :cond_0
    :goto_5
    throw v0

    .line 175
    :cond_1
    const-string/jumbo v0, "HeadMountedDisplayManager"

    const-string/jumbo v1, "Successfully wrote Cardboard parameters to external storage."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    :catch_4
    move-exception v1

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_5

    .line 164
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 161
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 159
    :catch_7
    move-exception v0

    goto/16 :goto_2

    :cond_2
    move v0, v3

    goto/16 :goto_0
.end method

.method private c()Lcom/google/vrtoolkit/cardboard/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 222
    .line 224
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/f;->b:Landroid/content/Context;

    .line 225
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v3, "current_device_params"

    .line 3075
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "Cardboard"

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 3076
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 224
    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :try_start_1
    invoke-static {v2}, Lcom/google/vrtoolkit/cardboard/a;->a(Ljava/io/InputStream;)Lcom/google/vrtoolkit/cardboard/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 229
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 237
    :goto_0
    return-object v0

    .line 228
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string/jumbo v2, "HeadMountedDisplayManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Bundled Cardboard device parameters not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v0, v1

    .line 237
    goto :goto_0

    .line 234
    :catch_1
    move-exception v0

    .line 235
    const-string/jumbo v2, "HeadMountedDisplayManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Error reading config file in asset folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 228
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static d()Lcom/google/vrtoolkit/cardboard/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 245
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    const-string/jumbo v3, "current_device_params"

    .line 246
    invoke-static {v3}, Landroid/support/v4/app/A;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :try_start_1
    invoke-static {v2}, Lcom/google/vrtoolkit/cardboard/a;->a(Ljava/io/InputStream;)Lcom/google/vrtoolkit/cardboard/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 251
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    :goto_0
    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    .line 251
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 254
    :cond_0
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string/jumbo v2, "HeadMountedDisplayManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Cardboard device parameters file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v0, v1

    .line 262
    goto :goto_0

    .line 259
    :catch_1
    move-exception v0

    .line 260
    const-string/jumbo v2, "HeadMountedDisplayManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Error reading Cardboard device parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_2

    .line 249
    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/google/vrtoolkit/cardboard/e;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/f;->a:Lcom/google/vrtoolkit/cardboard/e;

    return-object v0
.end method
