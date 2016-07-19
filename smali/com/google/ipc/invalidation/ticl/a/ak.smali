.class public final Lcom/google/ipc/invalidation/ticl/a/ak;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:I

.field private final b:Lcom/google/ipc/invalidation/b/c;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)V
    .locals 2

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 753
    const-string/jumbo v0, "num_registrations"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    const-string/jumbo v0, "num_registrations"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ak;->a(Ljava/lang/String;I)V

    .line 755
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/ak;->a:I

    .line 756
    const-string/jumbo v0, "registration_digest"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 757
    const-string/jumbo v0, "registration_digest"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/ak;->a(Ljava/lang/String;Lcom/google/ipc/invalidation/b/c;)V

    .line 758
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/ak;->b:Lcom/google/ipc/invalidation/b/c;

    .line 759
    return-void
.end method

.method public static a(ILcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/ak;
    .locals 2

    .prologue
    .line 745
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/ipc/invalidation/ticl/a/ak;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)V

    return-object v0
.end method

.method static a(Lcom/google/a/a/a/a/C;)Lcom/google/ipc/invalidation/ticl/a/ak;
    .locals 3

    .prologue
    .line 798
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 799
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ak;

    iget-object v1, p0, Lcom/google/a/a/a/a/C;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/a/C;->b:[B

    invoke-static {v2}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/ak;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)V

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/a/a/a/a/C;
    .locals 2

    .prologue
    .line 808
    new-instance v0, Lcom/google/a/a/a/a/C;

    invoke-direct {v0}, Lcom/google/a/a/a/a/C;-><init>()V

    .line 809
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ak;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/C;->a:Ljava/lang/Integer;

    .line 810
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ak;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/C;->b:[B

    .line 811
    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 781
    const-string/jumbo v0, "<RegistrationSummary:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 782
    const-string/jumbo v0, " num_registrations="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ak;->a:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 783
    const-string/jumbo v0, " registration_digest="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ak;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 784
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 785
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 775
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/ak;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 776
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ak;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 766
    if-ne p0, p1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return v0

    .line 767
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/ak;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 768
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ak;

    .line 769
    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/ak;->a:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/ak;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ak;->b:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ak;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
