.class public Lcom/google/android/gms/common/api/a/h;
.super Lcom/google/android/gms/common/api/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/h;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2, p0}, Lcom/google/android/gms/common/a;->a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void
.end method

.method protected final synthetic b()Lcom/google/android/gms/common/j;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    return-object v0
.end method

.method protected final b(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/h;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/h;->getActivity()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/w;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/a/i;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/a/i;-><init>(Lcom/google/android/gms/common/api/a/h;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/a/a;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/a/a;)Lcom/google/android/gms/common/api/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/h;->a:Lcom/google/android/gms/common/api/a/a;

    return-void
.end method
