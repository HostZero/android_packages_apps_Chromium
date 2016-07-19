.class public final Lcom/google/android/gms/cast/i;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/android/gms/cast/CastDevice;

.field b:Lcom/google/android/gms/cast/j;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CastDevice parameter cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CastListener parameter cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/cast/i;->a:Lcom/google/android/gms/cast/CastDevice;

    iput-object p2, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/j;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/i;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/i;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/i;->c:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/cast/h;
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/h;-><init>(Lcom/google/android/gms/cast/i;B)V

    return-object v0
.end method

.method public final a(Z)Lcom/google/android/gms/cast/i;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/i;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/cast/i;->c:I

    return-object p0
.end method
