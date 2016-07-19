.class final Lcom/google/ipc/invalidation/ticl/android2/n;
.super Ljava/lang/Object;
.source "TiclStateManager.java"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/n;->a:Ljava/util/Random;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;)Lcom/google/ipc/invalidation/ticl/a/j;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    .line 2227
    :try_start_0
    const-string/jumbo v0, "android_ticl_service_state.bin"

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 149
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 150
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 151
    const-wide/32 v8, 0x19000

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 152
    const-string/jumbo v0, "Ignoring too-large Ticl state file with size %s > %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const v7, 0x19000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {p1, v0, v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    :goto_0
    if-eqz v2, :cond_0

    .line 177
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    move-object v0, v1

    .line 183
    :cond_1
    :goto_2
    return-object v0

    .line 156
    :cond_2
    long-to-int v5, v6

    :try_start_3
    new-array v5, v5, [B

    .line 157
    invoke-interface {v0, v5}, Ljava/io/DataInput;->readFully([B)V

    .line 158
    invoke-static {v5}, Lcom/google/ipc/invalidation/ticl/a/l;->a([B)Lcom/google/ipc/invalidation/ticl/a/l;

    move-result-object v5

    .line 3207
    new-instance v0, Lcom/google/ipc/invalidation/a/a;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/a/a;-><init>()V

    .line 3208
    invoke-virtual {v5}, Lcom/google/ipc/invalidation/ticl/a/l;->a()Lcom/google/ipc/invalidation/ticl/a/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/ipc/invalidation/ticl/a/j;->e()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/ipc/invalidation/a/a;->a([B)V

    .line 3209
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/a/a;->b()[B

    move-result-object v0

    .line 3210
    new-instance v6, Lcom/google/ipc/invalidation/b/c;

    invoke-direct {v6, v0}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    invoke-virtual {v5}, Lcom/google/ipc/invalidation/ticl/a/l;->c()Lcom/google/ipc/invalidation/b/c;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3211
    const-string/jumbo v6, "Android TICL state digest mismatch; computed %s for %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v5, v7, v0

    invoke-interface {p1, v6, v7}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 161
    :goto_3
    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {v5}, Lcom/google/ipc/invalidation/ticl/a/l;->a()Lcom/google/ipc/invalidation/ticl/a/j;

    move-result-object v0

    const-string/jumbo v5, "validator ensures that state is set"

    invoke-static {v0, v5}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/j;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    if-eqz v2, :cond_1

    .line 177
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    const-string/jumbo v2, "Exception closing Ticl state file: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-interface {p1, v2, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v0, v4

    .line 3215
    goto :goto_3

    .line 165
    :cond_4
    :try_start_5
    const-string/jumbo v0, "Android Ticl state failed digest check: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-interface {p1, v0, v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_4
    :try_start_6
    const-string/jumbo v2, "Ticl state file does not exist: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "android_ticl_service_state.bin"

    aput-object v7, v5, v6

    invoke-interface {p1, v2, v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 176
    if-eqz v0, :cond_0

    .line 177
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 179
    :catch_2
    move-exception v0

    .line 180
    const-string/jumbo v2, "Exception closing Ticl state file: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-interface {p1, v2, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 179
    :catch_3
    move-exception v0

    .line 180
    const-string/jumbo v2, "Exception closing Ticl state file: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-interface {p1, v2, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 170
    :catch_4
    move-exception v0

    move-object v2, v1

    .line 171
    :goto_5
    :try_start_8
    const-string/jumbo v5, "Could not read Ticl state: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {p1, v5, v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 176
    if-eqz v2, :cond_0

    .line 177
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_1

    .line 179
    :catch_5
    move-exception v0

    .line 180
    const-string/jumbo v2, "Exception closing Ticl state file: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-interface {p1, v2, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 172
    :catch_6
    move-exception v0

    move-object v2, v1

    .line 173
    :goto_6
    :try_start_a
    const-string/jumbo v5, "Could not read Ticl state: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {p1, v5, v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 176
    if-eqz v2, :cond_0

    .line 177
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_1

    .line 179
    :catch_7
    move-exception v0

    .line 180
    const-string/jumbo v2, "Exception closing Ticl state file: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-interface {p1, v2, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 175
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 176
    :goto_7
    if-eqz v2, :cond_5

    .line 177
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 181
    :cond_5
    :goto_8
    throw v0

    .line 179
    :catch_8
    move-exception v1

    .line 180
    const-string/jumbo v2, "Exception closing Ticl state file: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-interface {p1, v2, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 175
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_7

    .line 172
    :catch_9
    move-exception v0

    goto :goto_6

    .line 170
    :catch_a
    move-exception v0

    goto :goto_5

    .line 169
    :catch_b
    move-exception v0

    move-object v0, v1

    goto/16 :goto_4
.end method

.method static a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;)Lcom/google/ipc/invalidation/ticl/android2/b;
    .locals 3

    .prologue
    .line 71
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;)Lcom/google/ipc/invalidation/ticl/a/j;

    move-result-object v1

    .line 72
    if-nez v1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/b;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/android2/n;->a:Ljava/util/Random;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/ipc/invalidation/ticl/android2/b;-><init>(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;Lcom/google/ipc/invalidation/ticl/a/j;)V

    .line 77
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/j;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/ticl/android2/b;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 232
    const-string/jumbo v0, "android_ticl_service_state.bin"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 233
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/ticl/android2/b;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 116
    const/4 v1, 0x0

    .line 2192
    :try_start_0
    new-instance v2, Lcom/google/ipc/invalidation/a/a;

    invoke-direct {v2}, Lcom/google/ipc/invalidation/a/a;-><init>()V

    .line 2193
    invoke-virtual {p2}, Lcom/google/ipc/invalidation/ticl/android2/b;->c()Lcom/google/ipc/invalidation/ticl/a/M;

    move-result-object v0

    .line 2194
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/M;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/M;->c()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/ipc/invalidation/ticl/android2/b;->j()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/google/ipc/invalidation/ticl/android2/b;->b()Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v6

    invoke-static {v3, v0, v4, v5, v6}, Lcom/google/ipc/invalidation/ticl/a/k;->a(ILcom/google/ipc/invalidation/b/c;JLcom/google/ipc/invalidation/ticl/a/N;)Lcom/google/ipc/invalidation/ticl/a/k;

    move-result-object v3

    .line 2196
    sget-object v4, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {p2}, Lcom/google/ipc/invalidation/ticl/android2/b;->i()Lcom/google/ipc/invalidation/ticl/a/at;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/ipc/invalidation/ticl/android2/b;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v4, v5, v3, v0}, Lcom/google/ipc/invalidation/ticl/a/j;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/at;Lcom/google/ipc/invalidation/ticl/a/k;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/j;

    move-result-object v0

    .line 2199
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/j;->e()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ipc/invalidation/a/a;->a([B)V

    .line 2200
    new-instance v3, Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/a/a;->b()[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    invoke-static {v0, v3}, Lcom/google/ipc/invalidation/ticl/a/l;->a(Lcom/google/ipc/invalidation/ticl/a/j;Lcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/l;

    move-result-object v0

    .line 2221
    const-string/jumbo v2, "android_ticl_service_state.bin"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 124
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/l;->d()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 125
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v1, :cond_0

    .line 133
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string/jumbo v1, "Exception closing Ticl state file: %s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-interface {p1, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    :try_start_2
    const-string/jumbo v2, "Could not write Ticl state: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {p1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    if-eqz v1, :cond_0

    .line 133
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 135
    :catch_2
    move-exception v0

    .line 136
    const-string/jumbo v1, "Exception closing Ticl state file: %s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-interface {p1, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :catch_3
    move-exception v0

    .line 129
    :try_start_4
    const-string/jumbo v2, "Could not write Ticl state: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {p1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    if-eqz v1, :cond_0

    .line 133
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 135
    :catch_4
    move-exception v0

    .line 136
    const-string/jumbo v1, "Exception closing Ticl state file: %s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-interface {p1, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    if-eqz v1, :cond_1

    .line 133
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 137
    :cond_1
    :goto_1
    throw v0

    .line 135
    :catch_5
    move-exception v1

    .line 136
    const-string/jumbo v2, "Exception closing Ticl state file: %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-interface {p1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;I[BLcom/google/ipc/invalidation/ticl/a/N;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 84
    .line 1242
    const-string/jumbo v0, "android_ticl_service_state.bin"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 84
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Ticl already exists"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 85
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/b;

    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/n;->a:Ljava/util/Random;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/android2/b;-><init>(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;)V

    .line 87
    if-nez p5, :cond_0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/ticl/android2/b;Ljava/util/List;)V

    .line 92
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/b;->start()V

    .line 94
    :cond_0
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/google/ipc/invalidation/ticl/android2/n;->a(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/ticl/android2/b;)V

    .line 95
    return-void

    :cond_1
    move v0, v7

    .line 84
    goto :goto_0
.end method

.method private static a(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/ticl/android2/b;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 103
    invoke-interface {p0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;

    .line 105
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/android2/b;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->a(JLjava/util/Collection;)V

    .line 106
    return-void
.end method
