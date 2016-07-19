.class public Lorg/chromium/chrome/browser/database/SQLiteCursor;
.super Landroid/database/AbstractCursor;
.source "SQLiteCursor.java"


# instance fields
.field private final mColumnTypeLock:Ljava/lang/Object;

.field private mColumnTypes:[I

.field private mCount:I

.field private final mDestoryNativeLock:Ljava/lang/Object;

.field private final mGetBlobLock:Ljava/lang/Object;

.field private final mMoveLock:Ljava/lang/Object;

.field private mNativeSQLiteCursor:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mCount:I

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypeLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mDestoryNativeLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mMoveLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mGetBlobLock:Ljava/lang/Object;

    .line 37
    iput-wide p1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    .line 38
    return-void
.end method

.method private static create(J)Lorg/chromium/chrome/browser/database/SQLiteCursor;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/database/SQLiteCursor;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;-><init>(J)V

    return-object v0
.end method

.method private fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->putValue(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getColumnType(I)I
    .locals 6

    .prologue
    .line 224
    iget-object v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypes:[I

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getColumnCount()I

    move-result v2

    .line 227
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypes:[I

    .line 228
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 229
    iget-object v3, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypes:[I

    iget-wide v4, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v4, v5, v0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetColumnType(JI)I

    move-result v4

    aput v4, v3, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mColumnTypes:[I

    aget v0, v0, p1

    return v0

    .line 232
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetBlob(JI)[B
.end method

.method private native nativeGetColumnNames(J)[Ljava/lang/String;
.end method

.method private native nativeGetColumnType(JI)I
.end method

.method private native nativeGetCount(J)I
.end method

.method private native nativeGetDouble(JI)D
.end method

.method private native nativeGetInt(JI)I
.end method

.method private native nativeGetLong(JI)J
.end method

.method private native nativeGetString(JI)Ljava/lang/String;
.end method

.method private native nativeIsNull(JI)Z
.end method

.method private native nativeMoveTo(JI)I
.end method

.method private putValue(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z
    .locals 2

    .prologue
    .line 204
    if-nez p2, :cond_0

    .line 205
    invoke-virtual {p1, p3, p4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    .line 215
    :goto_0
    return v0

    .line 206
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 207
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    goto :goto_0

    .line 208
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 209
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0

    .line 210
    :cond_2
    instance-of v0, p2, [B

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, [B

    array-length v0, v0

    if-lez v0, :cond_3

    .line 211
    check-cast p2, [B

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v0

    goto :goto_0

    .line 212
    :cond_3
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 213
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v0

    goto :goto_0

    .line 215
    :cond_4
    invoke-virtual {p1, p3, p4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 95
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 96
    iget-object v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mDestoryNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 98
    iget-wide v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeDestroy(J)V

    .line 99
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    .line 101
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 8

    .prologue
    .line 135
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getPosition()I

    move-result v2

    .line 141
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->moveToPosition(I)Z

    .line 142
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 143
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 144
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getColumnCount()I

    move-result v3

    .line 145
    invoke-virtual {p2, v3}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 146
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getPosition()I

    move-result v4

    .line 148
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 149
    const/4 v0, 0x1

    .line 150
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getColumnType(I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 169
    :goto_2
    if-eqz v0, :cond_2

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 152
    :sswitch_0
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p2, v0, v4, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_2

    .line 155
    :sswitch_1
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p2, v0, v4, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_2

    .line 158
    :sswitch_2
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, p2, v0, v4, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_2

    .line 161
    :sswitch_3
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, v4, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_2

    .line 164
    :sswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v4, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_2

    .line 174
    :cond_3
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x0 -> :sswitch_4
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
        0x7d4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    .line 127
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string/jumbo v0, "SQLiteCursor"

    const-string/jumbo v1, "Cursor hasn\'t been closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->close()V

    .line 131
    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mGetBlobLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetBlob(JI)[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetColumnNames(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mMoveLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetCount(J)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mCount:I

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mCount:I

    return v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDouble(I)D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetDouble(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetDouble(JI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetInt(JI)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetLong(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetInt(JI)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeIsNull(JI)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mMoveLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/database/SQLiteCursor;->mNativeSQLiteCursor:J

    invoke-direct {p0, v2, v3, p2}, Lorg/chromium/chrome/browser/database/SQLiteCursor;->nativeMoveTo(JI)I

    .line 108
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result v0

    return v0

    .line 108
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
