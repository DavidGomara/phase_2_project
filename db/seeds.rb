Author.destroy_all
Book.destroy_all
Painter.destroy_all
Musician.destroy_all
Song.destroy_all
Album.destroy_all
Artwork.destroy_all

Painter.create(name: "Jean-Michel Basquiat", bio: "A New York based artist who quickly overtook the art scene just to die at a meer 27 years old. Now with paintings auctioned for over 100 million dollars, the only thing more intriguing than his success is his back story. There is one Picasso quote that comes to mind when thinking on his life and works, “Every child is an artist. The problem is how to remain an artist once we grow up.” Jean-Michel was uncomprising in his refusal to leave an artistic mindset, what ever that mindset cost him.", img: "https://th.bing.com/th/id/OIP.sM478HVT559PXhPm8SOE2AHaJF?pid=Api&rs=1")
Painter.create(name: "Mark Rothko", bio: "An abstract painter who was part of the New York art scene in the mid 20th century. He is seen as a pioneer in the genres sub genre of Color Field paintings. He is most known for simplified color paintings that are meant to directly evoke an emotional response. Unfortunately he committed suicide on February 25, 1970.",img: "https://th.bing.com/th/id/OIP.30mSIaEUoofFdUQYyOlf4QHaI7?pid=Api&rs=1")
Painter.create(name: "Vincent Van Gogh", bio: "A post-impressionist painter with a notoriously fragile and intense tempermant. Until his untimely death he dealt with severe mental illness and depression. His lack of success not helping his emotional state, Van Gogh relied on his brothers financial support to paint. He died at 37, which is heavily debated upon, either he committed suicide or accidentally shot by a couple local kids who simply meant to harrase him and he covered for them.", img: "https://th.bing.com/th/id/OIP.tG8GV2sq5XvrBXdPUPdkpQHaKC?pid=Api&rs=1")
Painter.create(name: "Martin Tardy", bio: "A contemporary artist who often makes his works with both hands, making some what of a spectical. Although Tardy is hardly just a performance artist. While his works have yet to reach the higher price points, at 28 he is an artist to watch.", img: "https://www.woman.at/_storage/asset/8447107/storage/womanat:key-visual/file/126238002/Martin%20Tarday.jpg")

Artwork.create(painter_id: 1, name: "Notary", img: "https://www.lacittafutura.it/media/k2/items/cache/77b4cce0b69b99bdd89ed5fe2f72704d_XL.jpg")
Artwork.create(painter_id: 1, name: "Riding with Death", img: "http://www.ingridthorpe.com/wp-content/uploads/2017/11/riding-with-death-by-jean-michel-basquiat-1988.jpg")
Artwork.create(painter_id: 1, name: "Untitled (Black Devil Head)", img: 'https://www.christies.com/media-library/images/features/articles/2016/04/13/basquiat/jean-michel-basquiat-untitled-1982.jpg?w=737')
Artwork.create(painter_id: 1, name: "Untitled (Skull)", img: "https://64.media.tumblr.com/tumblr_lsymfbx26I1qfu253o1_500.jpg")

Artwork.create(painter_id: 2, name: "Slow Swirl at the Edge of the Sea", img: "http://totallyhistory.com/wp-content/uploads/2012/07/slow-swirl-at-the-edge-of-the-sea-1944-Rothko.jpg")
Artwork.create(painter_id: 2, name: "Archaic Idol", img: "https://i.pinimg.com/originals/f5/20/b1/f520b1ed37f80cc50139cf1e6e4cefb0.jpg")
Artwork.create(painter_id: 2, name: "Red", img: "https://i.pinimg.com/originals/0e/e0/40/0ee040b2003b634b4a1de6658bc4d15c.jpg")
Artwork.create(painter_id: 2, name: "Light Over Deep", img: "http://www.book530.com/paintingpic/1224a2/mark-rothko-light-over-deep-.jpg")

Artwork.create(painter_id: 3, name: "Starry Night", img: "https://1.bp.blogspot.com/-MuFMCCHyp5A/TZIx3wgDXPI/AAAAAAAAHE4/BbfEIXrWUjY/s640/Starry_Night-Vincent_VanGogh%25281152x864%2529.jpg")
Artwork.create(painter_id: 3, name: "Mulberry Tree", img: "https://cdn-img-0.wanelo.com/p/cc3/b0d/079/eca14334698814a92906c0e/full_size.jpg")
Artwork.create(painter_id: 3, name: "Road with Cypress and Star", img: "https://cdn.hswstatic.com/gif/vincent-van-gogh-final-paintings-10.jpg")
Artwork.create(painter_id: 3, name: "Red Fields", img: "http://art.people.com.cn/NMediaFile/2017/1220/MAIN201712201126000147826323677.jpg")

Artwork.create(painter_id: 4, name: "Female on black paper", img: "https://www.hilger.at/pics/large/10643.jpg?artwork=Female%20on%20black%20paper&artist=Martin%20Tardy")
Artwork.create(painter_id: 4, name: "Act Masculine", img: "https://i.pinimg.com/236x/4b/57/61/4b5761c117e2f96b53b4c26fb446ad5d.jpg?nii=t")
