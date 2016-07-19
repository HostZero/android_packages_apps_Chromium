.class Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider$1;
.super Landroid/database/AbstractCursor;
.source "WebRestrictionsContentProvider.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;

.field final synthetic val$result:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider$1;->this$0:Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;

    iput-object p2, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider$1;->val$result:Landroid/util/Pair;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Should Proceed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Error message"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider$1;->val$result:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 96
    goto :goto_0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider$1;->val$result:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method
