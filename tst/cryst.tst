gap> START_TEST( "Cryst: cryst.tst" );

gap> SetAssertionLevel(1);

gap> C := SpaceGroupIT( 3, 133 );
SpaceGroupOnRightIT(3,133,'2')

gap> m := IdentityMat(4);
[ [ 1, 0, 0, 0 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, 0, 0, 1 ] ]

gap> C^m;
<matrix group with 7 generators>

gap> C := SpaceGroupIT( 3, 133 );
SpaceGroupOnRightIT(3,133,'2')

gap> P := PointGroup( C );
<matrix group of size 16 with 4 generators>

gap> NormalizerInGLnZ( P );
<matrix group of size 16 with 7 generators>

gap> S := SpaceGroupBBNWZ( 4, 29, 7, 2, 1 );
SpaceGroupOnRightBBNWZ( 4, 29, 7, 2, 1 )

gap> S := WyckoffStabilizer( WyckoffPositions(S)[1] );
<matrix group with 4 generators>

gap> cl := ConjugacyClasses( S );
[ [ [ 1, 0, 0, 0, 0 ], [ 0, 1, 0, 0, 0 ], [ 0, 0, 1, 0, 0 ], 
      [ 0, 0, 0, 1, 0 ], [ 0, 0, 0, 0, 1 ] ]^G, 
  [ [ -1, -1, -1, -1, 0 ], [ 0, 1, 0, 1, 0 ], [ 1, 1, 0, 0, 0 ], 
      [ 0, -1, 0, 0, 0 ], [ 0, 0, 0, 0, 1 ] ]^G, 
  [ [ -1, -1, 0, 0, 0 ], [ 0, 0, -1, -1, 0 ], [ 1, 0, 0, 0, 0 ], 
      [ 0, 0, 1, 0, 0 ], [ 0, 0, 0, 0, 1 ] ]^G, 
  [ [ -1, -1, 0, 0, 0 ], [ 0, 1, 0, 0, 0 ], [ 1, 1, 1, 1, 0 ], 
      [ 0, -1, 0, -1, 0 ], [ 0, 0, 0, 0, 1 ] ]^G, 
  [ [ -1, -1, 0, 0, 0 ], [ 1, 0, 0, 0, 0 ], [ 0, 0, -1, -1, 0 ], 
      [ 0, 0, 1, 0, 0 ], [ 0, 0, 0, 0, 1 ] ]^G, 
  [ [ -1, 0, 0, 0, 0 ], [ 0, -1, 0, 0, 0 ], [ 1, 0, 1, 0, 0 ], 
      [ 0, 1, 0, 1, 0 ], [ 0, 0, 0, 0, 1 ] ]^G, 
  [ [ 0, -1, 0, -1, 0 ], [ 0, 1, 0, 0, 0 ], [ 1, 1, 1, 1, 0 ], 
      [ -1, -1, 0, 0, 0 ], [ 0, 0, 0, 0, 1 ] ]^G, 
  [ [ 0, -1, 0, -1, 0 ], [ 1, 1, 1, 1, 0 ], [ 0, 1, 0, 0, 0 ], 
      [ -1, -1, 0, 0, 0 ], [ 0, 0, 0, 0, 1 ] ]^G, 
  [ [ -1, -1, -1, -1, 0 ], [ 0, 0, 1, 1, 0 ], [ 1, 0, 1, 0, 0 ], 
      [ 0, 0, -1, 0, 0 ], [ 0, 0, 0, 0, 1 ] ]^G ]

gap> Size( cl[1] );
1

gap> G := SpaceGroupBBNWZ( 4, 29, 7, 2, 1 );
SpaceGroupOnRightBBNWZ( 4, 29, 7, 2, 1 )

gap> H := MaximalSubgroupRepsTG( G )[4];
<matrix group with 7 generators>

gap> C := ColorGroup( G, H );
<matrix group with 8 generators>

gap> ColorPermGroup( C );
Group([ (2,4)(3,8)(5,6), (2,5,6,4)(3,7,8,9), (1,2,6)(3,7,5)(4,9,8), (1,3,8)
(2,7,4)(5,9,6), (), (), (), () ])

gap> P := PointGroup( C );
<matrix group of size 72 with 4 generators>

gap> IsColorGroup( P );
true

gap> G := SpaceGroupIT(3,68);
SpaceGroupOnRightIT(3,68,'2')

gap> pos := WyckoffPositions(G);
[ < Wyckoff position, point group 3, translation := [ 0, 3/4, 1/4 ], 
    basis := [  ] >
    , < Wyckoff position, point group 3, translation := [ 0, 3/4, 3/4 ], 
    basis := [  ] >
    , < Wyckoff position, point group 6, translation := [ 0, 0, 1/2 ], 
    basis := [  ] >
    , < Wyckoff position, point group 6, translation := [ 1/4, 1/4, 1/2 ], 
    basis := [  ] >
    , < Wyckoff position, point group 2, translation := [ 1/4, 0, 0 ], 
    basis := [ [ 0, 0, 1 ] ] >
    , < Wyckoff position, point group 2, translation := [ 0, 3/4, 0 ], 
    basis := [ [ 0, 0, 1 ] ] >
    , < Wyckoff position, point group 4, translation := [ 0, 0, 1/4 ], 
    basis := [ [ 0, 1, 0 ] ] >
    , < Wyckoff position, point group 5, translation := [ 1/4, 1/4, 1/4 ], 
    basis := [ [ 1, 0, 0 ] ] >
    , < Wyckoff position, point group 1, translation := [ 0, 0, 0 ], 
    basis := [ [ 1/2, 1/2, 0 ], [ 0, 1, 0 ], [ 0, 0, 1 ] ] >
     ]

gap> WyckoffStabilizer(pos[5]);
Group(
[ [ [ -1, 0, 0, 0 ], [ 0, -1, 0, 0 ], [ 0, 0, 1, 0 ], [ 1/2, 0, 0, 1 ] ] ])

gap> S := SpaceGroupIT(2,7);
SpaceGroupOnRightIT(2,7,'1')

gap> P := PointGroup(S);
Group([ [ [ -1, 0 ], [ 0, -1 ] ], [ [ -1, 0 ], [ 0, 1 ] ] ])

gap> N := NormalizerInGLnZ(P);
Group([ [ [ -1, 0 ], [ 0, -1 ] ], [ [ -1, 0 ], [ 0, 1 ] ], 
  [ [ -1, 0 ], [ 0, -1 ] ], [ [ 1, 0 ], [ 0, -1 ] ], [ [ 0, 1 ], [ 1, 0 ] ] ])

gap> gen := Filtered( GeneratorsOfGroup(N), x -> not x in P );
[ [ [ 0, 1 ], [ 1, 0 ] ] ]

gap> n := AugmentedMatrix( gen[1], [1/5,1/7] );
[ [ 0, 1, 0 ], [ 1, 0, 0 ], [ 1/5, 1/7, 1 ] ]

gap> S2 := S^n;
<matrix group with 4 generators>

gap> c := ConjugatorSpaceGroupsStdSamePG( S, S2 );;
gap> S^c=S2;
true

gap> if IsPackageMarkedForLoading( "carat", "" ) then
>   c := ConjugatorSpaceGroupsStdSamePG( S2, S );;
>   if not S2^c=S then
>     Error( "Cryst: conjugator test failed" );
>   fi;
> fi;

gap> C1 := [ [ 4, -3, 0 ], [ -3, -1, 0 ], [ 1/5, 1/7, 1 ] ];
[ [ 4, -3, 0 ], [ -3, -1, 0 ], [ 1/5, 1/7, 1 ] ]

gap> C2 := [ [ -1, 4, 0 ], [ -1, -2, 0 ], [ 1/9, 1/13, 1 ] ];
[ [ -1, 4, 0 ], [ -1, -2, 0 ], [ 1/9, 1/13, 1 ] ]

gap> S1 := S^C1; IsSpaceGroup(S1);
<matrix group with 4 generators>
true

gap> S2 := S^C2; IsSpaceGroup(S2);
<matrix group with 4 generators>
true

gap> C  := ConjugatorSpaceGroups( S1, S2 );;
gap> S1^C = S2;
true

gap> G := SpaceGroupIT(3, 214);;
gap> iso := IsomorphismPcpGroup(G);;
gap> H := Image(iso);;
gap> h := Cgs(H)[1];;
gap> g := PreImage(iso, h);
[ [ 1, 0, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, -1, 0, 0 ], [ -7/4, 5/4, 3/4, 1 ] ]
gap> h = Image(iso, g);
true
gap> IsomorphismPcpGroup( PointGroup( G ) );;

gap> gen := GeneratorsOfGroup( SpaceGroupIT(3,149) ){[1..3]};;
gap> Gr := AffineCrystGroup( gen );
<matrix group with 3 generators>
gap> Gr = AsAffineCrystGroup( Group( gen ) );
true
gap> TranslationBasis( Gr );
[ [ 1, 0, 0 ], [ 0, 1, 0 ] ]
gap> InternalBasis( Gr );
[ [ 1, 0, 0 ], [ 0, 1, 0 ], [ 0, 0, 1 ] ]
gap> CheckTranslationBasis( Gr );
gap> StandardAffineCrystGroup( Gr );
<matrix group with 3 generators>
gap> TransParts( Gr );
[ [ 0, 0, 0 ], [ 0, 0, 0 ] ]
gap> PointHomomorphism( Gr );
[ [ [ 0, 1, 0, 0 ], [ -1, -1, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, 0, 0, 1 ] ], 
  [ [ 0, -1, 0, 0 ], [ -1, 0, 0, 0 ], [ 0, 0, -1, 0 ], [ 0, 0, 0, 1 ] ], 
  [ [ 1, 0, 0, 0 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 1, 0, 0, 1 ] ] ] -> 
[ [ [ 0, 1, 0 ], [ -1, -1, 0 ], [ 0, 0, 1 ] ], 
  [ [ 0, -1, 0 ], [ -1, 0, 0 ], [ 0, 0, -1 ] ], 
  [ [ 1, 0, 0 ], [ 0, 1, 0 ], [ 0, 0, 1 ] ] ]

gap> Gl := AffineCrystGroupOnLeft( List( gen, TransposedMat ) );
<matrix group with 3 generators>
gap> Gl = AsAffineCrystGroupOnLeft( Group( List( gen, TransposedMat ) ) );
true
gap> TranslationBasis( Gl );
[ [ 1, 0, 0 ], [ 0, 1, 0 ] ]
gap> InternalBasis( Gl );
[ [ 1, 0, 0 ], [ 0, 1, 0 ], [ 0, 0, 1 ] ]
gap> CheckTranslationBasis( Gl );
gap> StandardAffineCrystGroup( Gl );
<matrix group with 3 generators>
gap> TransParts( Gl );
[ [ 0, 0, 0 ], [ 0, 0, 0 ] ]
gap> PointHomomorphism( Gl );
[ [ [ 0, -1, 0, 0 ], [ 1, -1, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, 0, 0, 1 ] ], 
  [ [ 0, -1, 0, 0 ], [ -1, 0, 0, 0 ], [ 0, 0, -1, 0 ], [ 0, 0, 0, 1 ] ], 
  [ [ 1, 0, 0, 1 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, 0, 0, 1 ] ] ] -> 
[ [ [ 0, -1, 0 ], [ 1, -1, 0 ], [ 0, 0, 1 ] ], 
  [ [ 0, -1, 0 ], [ -1, 0, 0 ], [ 0, 0, -1 ] ], 
  [ [ 1, 0, 0 ], [ 0, 1, 0 ], [ 0, 0, 1 ] ] ]

gap> SpaceGroupIT(3,213) < SpaceGroupIT(3,217);
false

gap> G := SpaceGroupIT(3,183);;
gap> W := WyckoffPositions(G);;
gap> C := [ [ 3, 1, 0, 0 ], [ -1, -2, 0, 0 ], [ 2, 0, 1, 0 ], [ 0, 0, 0, 1 ] ];;
gap> IsSpaceGroup( G^C );
true

gap> G := TransposedMatrixGroup( G );
<matrix group with 6 generators>
gap> W := WyckoffPositions(G);;
gap> IsSpaceGroup( G^TransposedMat(C) );
true

gap> G := SpaceGroupIT( 3, 208 );
SpaceGroupOnRightIT(3,208,'1')
gap> M := MaximalSubgroupClassReps( G, rec( primes := [2,3] ) );
[ <matrix group with 7 generators>, <matrix group with 6 generators>, 
  <matrix group with 7 generators>, <matrix group with 7 generators>, 
  <matrix group with 5 generators>, <matrix group with 7 generators>, 
  <matrix group with 6 generators>, <matrix group with 7 generators> ]
gap> List( M, x -> Index( G, x ) );
[ 2, 2, 2, 4, 4, 4, 3, 27 ]
gap> List( Cartesian(M,M), x -> Index( G, Intersection2(x[1],x[2]) ) );
[ 2, 4, 4, 8, 8, 8, 6, 54, 4, 2, 4, 8, 8, 8, 6, 54, 4, 4, 2, 8, 8, 8, 6, 
  54, 8, 8, 8, 4, 16, 16, 12, 108, 8, 8, 8, 16, 4, 16, 12, 108, 8, 8, 8, 
  16, 16, 4, 12, 108, 6, 6, 6, 12, 12, 12, 3, 81, 54, 54, 54, 108, 108, 
  108, 81, 27 ]
gap> gen := GeneratorsOfGroup( M[1] );;
gap> Centralizer( M[1], gen[1] );
<matrix group with 3 generators>
gap> Centralizer( M[1], Subgroup( M[1], gen{[3]} ) );
<matrix group with 3 generators>
gap> C := RightCosets( G, M[3] );
[ RightCoset(<group with 7 generators>,[ [ 1, 0, 0, 0 ], [ 0, 1, 0, 0 ],
    [ 0, 0, 1, 0 ], [ 0, 0, 0, 1 ] ]), 
  RightCoset(<group with 7 generators>,[ [ 0, 1, 0, 0 ], [ 1, 0, 0, 0 ],
    [ 0, 0, -1, 0 ], [ 1/2, 1/2, 1/2, 1 ] ]) ]
gap> CanonicalRightCosetElement( M[3], Representative(C[2]) );
[ [ -1, 0, 0, 0 ], [ 0, -1, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, 0, 1, 1 ] ]
gap>  List( M, TranslationNormalizer );
[ <matrix group with 3 generators>, <matrix group with 3 generators>, 
  <matrix group with 3 generators>, <matrix group with 3 generators>, 
  <matrix group with 3 generators>, <matrix group with 3 generators>, 
  <matrix group with 3 generators>, <matrix group with 3 generators> ]
gap> if IsPackageMarkedForLoading( "carat", "" ) then
>   List( M, AffineNormalizer );;
> fi;
gap> List( M, x -> Orbit( G, x, OnPoints ) );;
gap> List( M, x -> OrbitStabilizer( G, x, OnPoints ) );;
gap> List( M, x -> IsomorphismPcpGroup( PointGroup(x) ) );;

gap> G := SpaceGroupOnLeftIT( 3, 208 );
SpaceGroupOnLeftIT(3,208,'1')
gap> M := MaximalSubgroupClassReps( G, rec( primes := [2,3] ) );
[ <matrix group with 7 generators>, <matrix group with 6 generators>, 
  <matrix group with 7 generators>, <matrix group with 7 generators>, 
  <matrix group with 5 generators>, <matrix group with 7 generators>, 
  <matrix group with 6 generators>, <matrix group with 7 generators> ]
gap> List( M, x -> Index( G, x ) );
[ 2, 2, 2, 4, 4, 4, 3, 27 ]
gap> List( Cartesian(M,M), x -> Index( G, Intersection2(x[1],x[2]) ) );
[ 2, 4, 4, 8, 8, 8, 6, 54, 4, 2, 4, 8, 8, 8, 6, 54, 4, 4, 2, 8, 8, 8, 6, 
  54, 8, 8, 8, 4, 16, 16, 12, 108, 8, 8, 8, 16, 4, 16, 12, 108, 8, 8, 8, 
  16, 16, 4, 12, 108, 6, 6, 6, 12, 12, 12, 3, 81, 54, 54, 54, 108, 108, 
  108, 81, 27 ]
gap> gen := GeneratorsOfGroup( M[1] );;
gap> Centralizer( M[1], gen[1] );
<matrix group with 3 generators>
gap> Centralizer( M[1], Subgroup( M[1], gen{[3]} ) );
<matrix group with 3 generators>
gap> C := RightCosets( G, M[3] );
[ RightCoset(<group with 7 generators>,[ [ 1, 0, 0, 0 ], [ 0, 1, 0, 0 ],
    [ 0, 0, 1, 0 ], [ 0, 0, 0, 1 ] ]), 
  RightCoset(<group with 7 generators>,[ [ 0, 1, 0, 1/2 ], [ 1, 0, 0,
    1/2 ], [ 0, 0, -1, 1/2 ], [ 0, 0, 0, 1 ] ]) ]
gap> CanonicalRightCosetElement( M[3], Representative(C[2]) );
[ [ -1, 0, 0, 0 ], [ 0, -1, 0, 0 ], [ 0, 0, 1, 1 ], [ 0, 0, 0, 1 ] ]
gap>  List( M, TranslationNormalizer );
[ <matrix group with 3 generators>, <matrix group with 3 generators>, 
  <matrix group with 3 generators>, <matrix group with 3 generators>, 
  <matrix group with 3 generators>, <matrix group with 3 generators>, 
  <matrix group with 3 generators>, <matrix group with 3 generators> ]
gap> if IsPackageMarkedForLoading( "carat", "" ) then
>   List( M, AffineNormalizer );;
> fi;
gap> List( M, x -> Orbit( G, x, OnPoints ) );;
gap> List( M, x -> OrbitStabilizer( G, x, OnPoints ) );;
gap> List( M, x -> IsomorphismPcpGroup( PointGroup(x) ) );;

gap> G := SpaceGroupOnRightIT( 3, 214 );;
gap> K := Kernel( PointHomomorphism( G ) );
<matrix group with 3 generators>
gap> NaturalHomomorphismByNormalSubgroup( G, K );
CompositionMapping( [ g1, g2, g3, g4, g5, g6, g7 ] -> 
[ g1, g2, g3, g4, id, id, id ], 
[ [ [ 1, 0, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, -1, 0, 0 ], [ -7/4, 5/4, 3/4, 1 ] ]
    , [ [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 1, 0, 0, 0 ], [ 0, 0, 0, 1 ] ], 
  [ [ 1, 0, 0, 0 ], [ 0, -1, 0, 0 ], [ 0, 0, -1, 0 ], [ -1/2, -1/2, 1, 1 ] ]
    , 
  [ [ -1, 0, 0, 0 ], [ 0, -1, 0, 0 ], [ 0, 0, 1, 0 ], [ 1/2, 0, -1/2, 1 ] ],
  [ [ 1, 0, 0, 0 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 1/2, 1/2, 1/2, 1 ] ], 
  [ [ 1, 0, 0, 0 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, 1, 0, 1 ] ], 
  [ [ 1, 0, 0, 0 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, 0, 1, 1 ] ] ] -> 
[ g1, g2, g3, g4, g5, g6, g7 ] )

gap> G := SpaceGroupOnLeftIT( 3, 222 );;
gap> K := Kernel( PointHomomorphism( G ) );
<matrix group with 3 generators>
gap> NaturalHomomorphismByNormalSubgroup( G, K );
CompositionMapping( [ g1, g2, g3, g4, g5, g6, g7, g8 ] -> 
[ g1, g2, g3, g4, g5, id, id, id ], 
[ [ [ -1, 0, 0, 0 ], [ 0, 1, 0, 1/2 ], [ 0, 0, 1, 1/2 ], [ 0, 0, 0, 1 ] ], 
  [ [ 0, 0, 1, 0 ], [ 0, 1, 0, 0 ], [ -1, 0, 0, 1/2 ], [ 0, 0, 0, 1 ] ], 
  [ [ 0, 0, 1, 0 ], [ 1, 0, 0, 0 ], [ 0, 1, 0, 0 ], [ 0, 0, 0, 1 ] ], 
  [ [ -1, 0, 0, 1/2 ], [ 0, 1, 0, 0 ], [ 0, 0, -1, 1/2 ], [ 0, 0, 0, 1 ] ], 
  [ [ -1, 0, 0, 1/2 ], [ 0, -1, 0, 1/2 ], [ 0, 0, 1, 0 ], [ 0, 0, 0, 1 ] ], 
  [ [ 1, 0, 0, 1 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, 0, 0, 1 ] ], 
  [ [ 1, 0, 0, 0 ], [ 0, 1, 0, 1 ], [ 0, 0, 1, 0 ], [ 0, 0, 0, 1 ] ], 
  [ [ 1, 0, 0, 0 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 1 ], [ 0, 0, 0, 1 ] ] ] -> 
[ g1, g2, g3, g4, g5, g6, g7, g8 ] )

gap> G := SpaceGroupOnRightIT( 3, 222 );;
gap> C := ConjugacyClassesMaximalSubgroups( G, rec(primes:=[2,3,5] ) );;
gap> List( C, Size );
[ 1, 1, 1, 4, 3, 27, 125 ]
gap> List( C, x -> Length( AsList(x) ) );
[ 1, 1, 1, 4, 3, 27, 125 ]
gap> L := AsList( C[5] );
[ <matrix group with 7 generators>, <matrix group with 7 generators>, 
  <matrix group with 7 generators> ]
gap> List(L, x -> RepresentativeAction( G, L[1], x, OnPoints ) );;
gap> List( C, x -> Normalizer( G, Representative(x) ) );;

gap> G := SpaceGroupOnLeftIT( 3, 222 );;
gap> C := ConjugacyClassesMaximalSubgroups( G, rec(primes:=[2,3,5] ) );;
gap> List( C, Size );
[ 1, 1, 1, 4, 3, 27, 125 ]
gap> List( C, x -> Length( AsList(x) ) );
[ 1, 1, 1, 4, 3, 27, 125 ]
gap> L := AsList( C[5] );
[ <matrix group with 7 generators>, <matrix group with 7 generators>, 
  <matrix group with 7 generators> ]
gap> List(L, x -> RepresentativeAction( G, L[1], x, OnPoints ) );;
gap> List( C, x -> Normalizer( G, Representative(x) ) );;

gap> STOP_TEST( "cryst.tst", 10000 );