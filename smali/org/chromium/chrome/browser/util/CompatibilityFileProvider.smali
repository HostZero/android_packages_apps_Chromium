.class public Lorg/chromium/chrome/browser/util/CompatibilityFileProvider;
.super Landroid/support/v4/content/c;
.source "CompatibilityFileProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/content/c;-><init>()V

    return-void
.end method

.method private columnNamesWithData([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 63
    const-string/jumbo v3, "_data"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    :goto_1
    return-object p1

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 67
    array-length v1, p1

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    move-object p1, v0

    .line 68
    goto :goto_1
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 24
    invoke-super/range {p0 .. p5}, Landroid/support/v4/content/c;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/util/CompatibilityFileProvider;->columnNamesWithData([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    if-ne v3, v0, :cond_0

    move-object v0, v1

    .line 58
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 32
    const/4 v0, -0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 33
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 35
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 36
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 51
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 35
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :pswitch_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 41
    :pswitch_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 44
    :pswitch_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 47
    :pswitch_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 57
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 58
    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
