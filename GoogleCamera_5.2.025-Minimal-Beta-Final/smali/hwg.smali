.class public final Lhwg;
.super Landroid/os/Binder;

# interfaces
.implements Lhwf;


# instance fields
.field private final a:Lhtp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-virtual {p0, p0, v0}, Lhwg;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lhtp;)V
    .locals 0

    invoke-direct {p0}, Lhwg;-><init>()V

    iput-object p1, p0, Lhwg;->a:Lhtp;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/internal/zzf;)V
    .locals 2

    iget-object v0, p0, Lhwg;->a:Lhtp;

    iget-object v1, p1, Lcom/google/android/gms/location/internal/zzf;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lhtp;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/internal/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzf;

    :goto_1
    invoke-virtual {p0, v0}, Lhwg;->a(Lcom/google/android/gms/location/internal/zzf;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
