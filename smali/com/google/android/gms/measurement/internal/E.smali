.class final Lcom/google/android/gms/measurement/internal/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:[B

.field private final c:Lcom/google/android/gms/measurement/internal/C;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;

.field private synthetic f:Lcom/google/android/gms/measurement/internal/B;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/B;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/C;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/E;->f:Lcom/google/android/gms/measurement/internal/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/E;->a:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/E;->b:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/E;->c:Lcom/google/android/gms/measurement/internal/C;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/E;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/E;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/E;->f:Lcom/google/android/gms/measurement/internal/B;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B;->b()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/E;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-nez v2, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to obtain HTTP connection"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v12

    move v11, v7

    move-object v1, v5

    move-object v2, v5

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/E;->f:Lcom/google/android/gms/measurement/internal/B;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v1

    new-instance v8, Lcom/google/android/gms/measurement/internal/D;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/E;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/E;->c:Lcom/google/android/gms/measurement/internal/C;

    move-object v13, v5

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/D;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/C;ILjava/lang/Throwable;[BB)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_2
    :try_start_2
    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->H()J

    const v2, 0xea60

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->I()J

    const v2, 0xee48

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/E;->e:Ljava/util/Map;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/E;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v12

    move v11, v7

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/E;->b:[B

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/E;->f:Lcom/google/android/gms/measurement/internal/B;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B;->l()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/E;->b:[B

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/c;->a([B)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/E;->f:Lcom/google/android/gms/measurement/internal/B;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v4, "Uploading data. size"

    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v2, "Content-Encoding"

    const-string/jumbo v4, "gzip"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    :try_start_6
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/B;->a(Ljava/net/HttpURLConnection;)[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/E;->f:Lcom/google/android/gms/measurement/internal/B;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v8

    new-instance v1, Lcom/google/android/gms/measurement/internal/D;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/E;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/E;->c:Lcom/google/android/gms/measurement/internal/C;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/D;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/C;ILjava/lang/Throwable;[BB)V

    invoke-virtual {v8, v1}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/E;->f:Lcom/google/android/gms/measurement/internal/B;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v3

    const-string/jumbo v4, "Error closing HTTP compressed POST connection output stream"

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v8, v1

    move v4, v7

    move-object v2, v5

    move-object v1, v5

    :goto_4
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/E;->f:Lcom/google/android/gms/measurement/internal/B;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v9

    new-instance v1, Lcom/google/android/gms/measurement/internal/D;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/E;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/E;->c:Lcom/google/android/gms/measurement/internal/C;

    move-object v6, v5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/D;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/C;ILjava/lang/Throwable;[BB)V

    invoke-virtual {v9, v1}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    throw v8

    :catch_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/E;->f:Lcom/google/android/gms/measurement/internal/B;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v3

    const-string/jumbo v6, "Error closing HTTP compressed POST connection output stream"

    invoke-virtual {v3, v6, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v8, v2

    move v4, v7

    move-object v2, v5

    goto :goto_4

    :catchall_2
    move-exception v3

    move-object v8, v3

    move v4, v7

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v8, v2

    move-object v2, v5

    goto :goto_4

    :catch_4
    move-exception v12

    move v11, v7

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    goto/16 :goto_0

    :catch_5
    move-exception v12

    move v11, v4

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_0
.end method
