.class final Landroid/support/v4/g/b;
.super Landroid/support/v4/g/h;
.source "ArrayMap.java"


# instance fields
.field private synthetic d:Landroid/support/v4/g/a;


# direct methods
.method constructor <init>(Landroid/support/v4/g/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Landroid/support/v4/g/b;->d:Landroid/support/v4/g/a;

    invoke-direct {p0}, Landroid/support/v4/g/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v4/g/b;->d:Landroid/support/v4/g/a;

    iget v0, v0, Landroid/support/v4/g/a;->b:I

    return v0
.end method

.method protected final a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v4/g/b;->d:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final a(II)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v4/g/b;->d:Landroid/support/v4/g/a;

    iget-object v0, v0, Landroid/support/v4/g/a;->a:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v4/g/b;->d:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a(I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/g/b;->d:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->d(I)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v4/g/b;->d:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method protected final b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v4/g/b;->d:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/g/b;->d:Landroid/support/v4/g/a;

    return-object v0
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v4/g/b;->d:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->clear()V

    .line 117
    return-void
.end method
