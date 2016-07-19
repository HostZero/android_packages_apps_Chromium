.class public abstract Lcom/google/ipc/invalidation/b/n;
.super Lcom/google/ipc/invalidation/b/h;
.source "ProtoWrapper.java"


# static fields
.field private static final a:Ljava/util/List;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/b/n;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/h;-><init>()V

    .line 39
    return-void
.end method

.method protected static a(Z)I
    .locals 1

    .prologue
    .line 225
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 91
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1075
    :cond_0
    sget-object v0, Lcom/google/ipc/invalidation/b/n;->a:Ljava/util/List;

    .line 101
    :goto_0
    return-object v0

    .line 94
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v0, v1

    .line 95
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 96
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 97
    new-instance v2, Lcom/google/ipc/invalidation/b/o;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v4, "Element %d of repeated field \'%s\' must not be null."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object p0, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 119
    if-gez p1, :cond_0

    .line 120
    new-instance v0, Lcom/google/ipc/invalidation/b/o;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "Field \'%s\' must be non-negative: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    return-void
.end method

.method protected static a(Ljava/lang/String;Lcom/google/ipc/invalidation/b/c;)V
    .locals 5

    .prologue
    .line 165
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/google/ipc/invalidation/b/o;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "Field \'%s\' must be non-empty"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Lcom/google/ipc/invalidation/b/o;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "Required field \'%s\' was not set"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 154
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/google/ipc/invalidation/b/o;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "Field \'%s\' must be non-empty"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    return-void
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    if-nez p0, :cond_1

    .line 199
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected static b(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;
    .locals 5

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/google/ipc/invalidation/b/n;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Lcom/google/ipc/invalidation/b/o;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "Repeated field \'%s\' must have at least one element"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    return-object v0
.end method

.method protected static b(Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 128
    new-instance v0, Lcom/google/ipc/invalidation/b/o;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "Field \'%s\' must be non-negative: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 180
    new-instance v0, Lcom/google/ipc/invalidation/b/o;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "Multiple one-of fields defined, including: %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static u()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/google/ipc/invalidation/b/o;

    const-string/jumbo v1, "No one-of fields defined"

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final a(ZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Lcom/google/ipc/invalidation/b/o;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    return-void
.end method

.method protected abstract b()I
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 57
    iget v0, p0, Lcom/google/ipc/invalidation/b/n;->b:I

    if-ne v0, v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/b/n;->b()I

    move-result v0

    .line 63
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Lcom/google/ipc/invalidation/b/n;->b:I

    .line 66
    :cond_1
    iget v0, p0, Lcom/google/ipc/invalidation/b/n;->b:I

    return v0
.end method
