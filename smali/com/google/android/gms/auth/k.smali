.class final Lcom/google/android/gms/auth/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/l;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/k;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/auth/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 0
    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/b/z;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/y;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    invoke-direct {v1}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/auth/k;->a:Ljava/lang/String;

    .line 2000
    iput-object v2, v1, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->c:Ljava/lang/String;

    .line 1000
    iget v2, p0, Lcom/google/android/gms/auth/k;->b:I

    .line 3000
    iput v2, v1, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->b:I

    .line 1000
    invoke-interface {v0, v1}, Lcom/google/android/gms/b/y;->a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->b:Ljava/util/List;

    .line 0
    return-object v0
.end method
