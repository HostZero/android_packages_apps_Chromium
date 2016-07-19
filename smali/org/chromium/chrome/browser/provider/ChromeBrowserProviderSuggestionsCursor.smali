.class Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "ChromeBrowserProviderSuggestionsCursor.java"


# static fields
.field private static final COLS:[Ljava/lang/String;


# instance fields
.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    .line 44
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->COLS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 93
    packed-switch p1, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 96
    :pswitch_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "date"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 98
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 60
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 62
    :pswitch_1
    const-string/jumbo v0, "android.intent.action.VIEW"

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_5
    sget v0, Lorg/chromium/chrome/R$mipmap;->app_icon:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 80
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-string/jumbo v0, "0"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
