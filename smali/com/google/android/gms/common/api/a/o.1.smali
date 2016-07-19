.class public final Lcom/google/android/gms/common/api/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/i;
.implements Lcom/google/android/gms/common/api/j;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/a;

.field private final b:I

.field private c:Lcom/google/android/gms/common/api/a/O;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/o;->a:Lcom/google/android/gms/common/api/a;

    iput p2, p0, Lcom/google/android/gms/common/api/a/o;->b:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/o;->c:Lcom/google/android/gms/common/api/a/O;

    const-string/jumbo v1, "Callbacks must be attached to a GoogleApiClient instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a/O;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/o;->c:Lcom/google/android/gms/common/api/a/O;

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/o;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/o;->c:Lcom/google/android/gms/common/api/a/O;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/a/O;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/o;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/o;->c:Lcom/google/android/gms/common/api/a/O;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/o;->a:Lcom/google/android/gms/common/api/a;

    iget v2, p0, Lcom/google/android/gms/common/api/a/o;->b:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/a/O;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/o;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/o;->c:Lcom/google/android/gms/common/api/a/O;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/a/O;->a(I)V

    return-void
.end method
